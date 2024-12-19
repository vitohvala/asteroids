#include <glad/glad.h>
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <math.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <float.h>
#include <strings.h>
#include <time.h>
#include <linmath.h>

#define ERROR_EXIT(E, ...)     fprintf(stderr, __VA_ARGS__); exit(E)
#define ERROR_RETURN(R, ...)   fprintf(stderr, __VA_ARGS__); return R
#define PLAYER_SPEED           25
#define MAX_ASTEROIDS          12
#define VERTEX_SIZE(vertex, x) ((sizeof(vertex) / sizeof(vertex[0]) / x))
#define PSIZE                  40
#define V2_PSIZE               (Vector2){ .x = PSIZE, .y = PSIZE}
#define V2_PSIZEX2             (Vector2){ .x = PSIZE * 2, .y = PSIZE * 2}
#define V2_DUMMY               (Vector2){ .x = .0f, .y = 0.0f}
#define TAU                    2.0f * M_PI
#define R_WIDTH                1280.0f
#define R_HEIGHT               720.0f
#define DRAG                   0.035

typedef struct {
    float x, y;
} Vector2;

typedef struct {
    Vector2 pos;
    Vector2 size;
    int seed;
    float angle;
    float vel;
} Asteroid;

typedef struct {
    Vector2 pos;
    Vector2 size;
    Vector2 vel;
    Vector2 dir;
    float angle;
} Player;

typedef struct {
    int size;
    int capacity;
    Vector2 *pos;
    Vector2 *dir;
} Bullet;

mat4x4 projection;
unsigned int shader;

SDL_Window 
*init_window(int width, int height)
{
    if (!SDL_Init(SDL_INIT_VIDEO)) {
        printf("SDL initialization failed: %s\n", SDL_GetError());
    }

    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);

    SDL_Window* window = 
        SDL_CreateWindow("Asteroid", width, height, SDL_WINDOW_OPENGL);

    if (!window) {
        ERROR_EXIT(-1, "Window creation failed: %s\n", SDL_GetError());
    }

    if(!SDL_GL_CreateContext(window)) {
        ERROR_EXIT(1, "Failed to create context %s\n", SDL_GetError());
    }

    if(!gladLoadGLLoader((GLADloadproc)SDL_GL_GetProcAddress)) {
        ERROR_EXIT(1, "Failed to initialize glad\n");
    }

    puts("GL Loaded");
    fprintf(stdout, "VENDOR %s\n",   glGetString(GL_VENDOR));
    fprintf(stdout, "RENDERER %s\n", glGetString(GL_RENDERER));
    fprintf(stdout, "VERSION %s\n",  glGetString(GL_VERSION));

    return window;
}

Vector2
vector2_scale(Vector2 vec, const float s)
{
    Vector2 r;
    r.x = vec.x * s;
    r.y = vec.y * s;
    return r;
}

Vector2 
vector2_add(Vector2 a, Vector2 b)
{
    return (Vector2){ .x = a.x + b.x, .y = a.y + b.y };
}

Vector2
vector2_modf(Vector2 a, const float d1, const float d2) {
    return (Vector2){ .x = fmodf(fmodf(a.x, d1) + d1, d1),
        .y = fmodf(fmodf(a.y, d2) + d2, d2) };
}

void 
draw(GLenum mode, Vector2 pos, Vector2 size,
        float angle, unsigned int vao, int nr_v) 
{
    mat4x4 trans;
    mat4x4_identity(trans);
    mat4x4 ret;
    mat4x4_translate_in_place(trans, pos.x, pos.y, 0.0f);
    mat4x4_rotate(ret, trans, 0.0f, 0.0f, 1.0f, angle);
    mat4x4_scale_aniso(trans, ret, size.x, size.y, 0.0);

    mat4x4_mul(ret, projection, trans);
    glUseProgram(shader);
    glUniformMatrix4fv(glGetUniformLocation(shader, "transform"),
            1, GL_FALSE, (GLfloat *)ret);
    glBindVertexArray(vao);
    glDrawArrays(mode, 0, nr_v);
}

Vector2 
get_direction(float angle) 
{
    Vector2 dir = { .x = cosf(angle + (M_PI * 0.5f)),
        .y = sinf(angle + (M_PI * 0.5f)) };
   return dir;
}

void 
vao_init(unsigned int *vao, unsigned int *vbo, float *vert, size_t vert_size)
{
    glGenVertexArrays(1, vao);
    glGenBuffers(1, vbo);
    glBindVertexArray(*vao);
    glBindBuffer(GL_ARRAY_BUFFER, *vbo);
    glBufferData(GL_ARRAY_BUFFER, vert_size, vert, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
}

void 
check_shader_err(unsigned int shader, GLenum pname, char *err_str) 
{
    int  success;
    char infoLog[512];
    glGetShaderiv(shader, pname, &success);
    
    if(!success) {
        glGetShaderInfoLog(shader, 512, NULL, infoLog);
        fprintf(stderr, "ERROR SHADER %s COMPILATION_FAILED %s\n", infoLog, err_str);
    }

}
void 
draw_line(float x1, float y1, float x2, float y2) 
{
    float dx = x2 - x1;
    float dy = y2 - y1;
        
    float length = sqrt(dx*dx + dy*dy);
    float angle  = atan2(dy, dx);

    float vert[] = {
         0.0f, 0.0f, 0.0f,
         1.0f, 0.0f, 0.0f
    };
    
    unsigned int vao, vbo;
    vao_init(&vao, &vbo, vert, sizeof(vert));
    draw(GL_LINES, (Vector2){x1, y1}, (Vector2){length, 1.0f}, angle, vao, 2);
}

void
draw_line_v(Vector2 pos, Vector2 end_pos) 
{
    draw_line(pos.x, pos.y, end_pos.x, end_pos.y);
}

float
rand_float( float min, float max )
{
    return min + (rand() / (float) RAND_MAX) * (max - min); 
}

void 
draw_asteroid(Asteroid *asteroid)
{
    srand(asteroid->seed);
    int n = rand() % (10 - 7 + 1) + 7; 
    float vert[(n) * 3];  
    
    int index = 0;
    for(int i = 0; i < n; i++) {
        float radius = 0.6f * (1.0f + rand_float(-0.7f, 0.7f));
        float angle = ((TAU * (float)(i)) / (float)n); 
        float x = radius * cosf(angle);
        float y = radius * sinf(angle);
        
        vert[index++] = x;
        vert[index++] = y;
        vert[index++] = 0.0f;
    }
    
    unsigned int vao, vbo;
    vao_init(&vao, &vbo, vert, sizeof(vert));
    draw(GL_LINE_LOOP, asteroid->pos, asteroid->size, asteroid->angle, vao, n);    
}

bool
has_Vector2_intersection(Vector2 p1, Vector2 p1size,
                           Vector2 p2, Vector2 p2size)
{
    const SDL_FRect A = {p1.x, p1.y, p1size.x, p1size.y};
    const SDL_FRect B = {p2.x, p2.y, p2size.x, p2size.y};
    return SDL_HasRectIntersectionFloat(&A, &B);
} 

bool
angle_ast(Asteroid *a, Asteroid *b) {
    for(int i= 0; i < MAX_ASTEROIDS; i++) {
        if(b[i].angle == a->angle) return false;
    }
    return true;
}

Bullet
b_init() {
    Bullet p;
    p.size = 0;
    p.capacity = 512;
    p.pos = (Vector2*)malloc(p.capacity * sizeof(Vector2));
    p.dir = (Vector2*)malloc(p.capacity * sizeof(Vector2));
    return p;
}

void
b_append_pos(Bullet *p, Vector2 pos, Vector2 dir) {
    p->pos[p->size].x = pos.x;
    p->pos[p->size].y = pos.y;
    p->dir[p->size].x = dir.x;
    p->dir[p->size].y = dir.y;

    p->size++;
    if(p->size >= p->capacity) {
        p->size = 0;
    }
}

void
b_free(Bullet *p){
    p->capacity = 0;
    p->size = 0;
    free(p->pos);
    free(p->dir);
}

void shoot(Bullet *points) {
    for(int i = 0; i < points->size; i++) {
        Vector2 temp = vector2_add(points->pos[i], vector2_scale(points->dir[i], 5.0f));
        draw_line_v(points->pos[i], temp);
    }
}

int
main(void)
{
    SDL_Window *window = init_window(1280, 720);

    uint8_t running = 1;
    srand(time(0));

    float vertices[] = {
        -0.4f, -0.5f, 0.0f,
        -0.2f, -0.4f, 0.0f,
         0.2f, -0.4f, 0.0f,
         0.4f, -0.5f, 0.0f,
         0.0f,  0.5,  0.0f,
        -0.4f, -0.5f, 0.0f,
        -0.2f, -0.4f, 0.0f,
         0.0f, -0.7f, 0.0f,
         0.2f, -0.4f, 0.0f
    };

    unsigned int vao, vbo;
    vao_init(&vao, &vbo, vertices, sizeof(vertices));

    Asteroid asteroid[MAX_ASTEROIDS];

    const char *vertexShaderSource = 
        "#version 330 core\n"
        "layout (location = 0) in vec3 aPos;\n"
        "uniform mat4 transform;\n"
        "void main()\n"
        "{\n"
        "   gl_Position = transform * vec4(aPos.xyz, 1.0);\n"
        "}\0";

    unsigned int vertex_shader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertex_shader, 1, &vertexShaderSource, 0);
    glCompileShader(vertex_shader);
    check_shader_err(vertex_shader, GL_COMPILE_STATUS, "VERTEX");

    const char *fragmentShaderSource  = 
        "#version 330 core\n"
        "out vec4 FragColor;\n"
        "void main() { \n"
        "    FragColor = vec4(1.0, 1.0, 1.0, 1.0f);\n"
        "}\0"; 

    unsigned int fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragment_shader, 1, &fragmentShaderSource, 0);
    glCompileShader(fragment_shader);
    check_shader_err(fragment_shader, GL_COMPILE_STATUS, "FRAGMENT");

    shader = glCreateProgram();
    glAttachShader(shader, vertex_shader);
    glAttachShader(shader, fragment_shader);
    glLinkProgram(shader);
    check_shader_err(shader, GL_LINK_STATUS, "PROGRAM");

    glDeleteShader(vertex_shader);
    glDeleteShader(fragment_shader);

    Uint64 freq = SDL_GetPerformanceFrequency();
    Uint64 counter1 = SDL_GetPerformanceCounter(), counter2;
    float delta_time;

    mat4x4_ortho(projection,  0.0f, R_WIDTH, R_HEIGHT, 0.0f, 
            -1.0f, 1.0f); 

    Uint8 frame = 0;

    //Mozda bi ovo trebalo da bude Rectangle
    Vector2 player = { .x = 100.0f, .y = 100.0f };
    Vector2 player_vel = { .x = .0f, .y = .0f };

    for(int i = 1; i < MAX_ASTEROIDS; i++){
        asteroid[i].pos.x = rand_float(1.0f, R_WIDTH);
        asteroid[i].pos.y = rand_float(1.0f, R_HEIGHT);
        asteroid[i].size.x = rand_float(45.0f, 80.0f); 
        asteroid[i].size.y = rand_float(45.0f, 80.0f);
        asteroid[i].angle = rand_float(-TAU, TAU);
        asteroid[i].vel = rand_float(PLAYER_SPEED * 1.5f, PLAYER_SPEED * 3.0f);
        asteroid[i].seed = rand();
    }

    float angle = 0.0f;
    Bullet b = b_init();
    Vector2 dir_player = get_direction(angle);

    while(running) {
        int nr_v = 6;
        
        SDL_Event ev;
        while(SDL_PollEvent(&ev)) {
            switch (ev.type) {
                case SDL_EVENT_QUIT :
                    running = 0;
                    break;
                case SDL_EVENT_KEY_UP:
                    if(ev.key.scancode == SDL_SCANCODE_J) {
                        Vector2 t = vector2_add(player, vector2_scale(dir_player, delta_time * PLAYER_SPEED * 43));
                        b_append_pos(&b, t, dir_player);
                    }
                    break;
            }
        }

        glClearColor(0.17f, .2f, .23f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        const bool *keyboard = SDL_GetKeyboardState(NULL);
        if(keyboard[SDL_SCANCODE_W]) {
            player_vel = vector2_add(player_vel,
                    vector2_scale(dir_player, delta_time * PLAYER_SPEED));
            if(frame % 3 == 0)
                nr_v = 9;
        }

        if(keyboard[SDL_SCANCODE_Q]) {
            angle -= delta_time * (M_PI * 2.0f) * 1.5f;
            dir_player = get_direction(angle);

        } else if (keyboard[SDL_SCANCODE_E]) {
            angle += delta_time * (M_PI * 2.0f) * 1.5f;
            dir_player = get_direction(angle);
        }

        player_vel = vector2_scale(player_vel, 1.0f - DRAG);
        player = vector2_add(player, player_vel);
        player = vector2_modf(player, R_WIDTH, R_HEIGHT);

        for(int i = 0; i < MAX_ASTEROIDS; i++) {
            asteroid[i].pos = vector2_add(asteroid[i].pos, vector2_scale(get_direction(asteroid[i].angle), 
                                                                 delta_time * asteroid[i].vel));
            asteroid[i].pos = vector2_modf(asteroid[i].pos, R_WIDTH, R_HEIGHT);
        }
        for(int i = 0; i < b.size; i++) {
            b.pos[i] = vector2_add(b.pos[i], vector2_scale(b.dir[i], delta_time * PLAYER_SPEED * 6));
        }
        
        draw(GL_LINE_STRIP, player, V2_PSIZE, angle, vao, nr_v);
       for(int i = 0; i < MAX_ASTEROIDS; i++){
            draw_asteroid(&asteroid[i]);
        }
        shoot(&b);

        SDL_GL_SwapWindow(window);
        counter2 = SDL_GetPerformanceCounter();
        delta_time = (float)(counter2 - counter1) / (float)freq;
        counter1 = counter2;
        frame++;
    }
    
    SDL_DestroyWindow(window);
    b_free(&b);
    SDL_Quit();
    return 0;
}
