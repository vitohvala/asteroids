#include <glad/glad.h>
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <math.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
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
#define CAPACITY               256

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
    Vector2 pos[CAPACITY];
    Vector2 dir[CAPACITY];
} Bullet;

typedef struct {
    unsigned int vao;
    unsigned int vbo;
    //unsigned int ebo;
    unsigned int size;
} Renderer;

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

Renderer renderer_init(unsigned int size) {
    Renderer r;
    r.size = size;

    glGenVertexArrays(1, &r.vao);
    glGenBuffers(1, &r.vbo);
    
    glBindVertexArray(r.vao);
    glBindBuffer(GL_ARRAY_BUFFER, r.vbo);
    glBufferData(GL_ARRAY_BUFFER, size, NULL, GL_DYNAMIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    return r;
}

void update_renderer(Renderer *renderer, float *vert, unsigned int size) {
    if (size > renderer->size) {
        glBindBuffer(GL_ARRAY_BUFFER, renderer->vbo);
        glBufferData(GL_ARRAY_BUFFER, size, NULL, GL_DYNAMIC_DRAW);
        renderer->size = size;
    }
    
    glBindBuffer(GL_ARRAY_BUFFER, renderer->vbo);
    glBufferSubData(GL_ARRAY_BUFFER, 0, size, vert);
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
        fprintf(stderr, "ERROR SHADER %s COMPILATION_FAILED %s\n", err_str, infoLog);
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
draw_asteroid(Asteroid *asteroid , Renderer *renderer)
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
    
    update_renderer(renderer, vert, n * 3 * sizeof(float));
    draw(GL_LINE_LOOP, asteroid->pos, asteroid->size, asteroid->angle, renderer->vao, n);    
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

void
b_append_pos(Bullet *p, Vector2 pos, Vector2 dir) {
    p->pos[p->size].x = pos.x;
    p->pos[p->size].y = pos.y;
    p->dir[p->size].x = dir.x;
    p->dir[p->size].y = dir.y;

    p->size++;
    if(p->size >= CAPACITY) {
        p->size = 0;
    }
}

void shoot(Bullet *points, Renderer *r) {
    float vert[points->size * 6];
    int ind = 0;
    for(int i = 0; i < points->size; i++) {
        vert[ind++] = points->pos[i].x;
        vert[ind++] = points->pos[i].y;
        vert[ind++] = 0.0f;

        Vector2 temp = vector2_add(points->pos[i], vector2_scale(points->dir[i], 5.0f));
        vert[ind++] = temp.x;
        vert[ind++] = temp.y;
        vert[ind++] = 0.0f;
    }
    update_renderer(r, vert, points->size * 6 * sizeof(float));
    draw(GL_LINES, V2_DUMMY, (Vector2){1, 1}, 0.0f, r->vao, ind / 3);
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
    Bullet b = {.size = 0};

    Vector2 dir_player = get_direction(angle);
    Renderer r = renderer_init(0);
    Renderer r2 = renderer_init(0);

    while(running) {
        int nr_v = 6;
        
        SDL_Event ev;
        while(SDL_PollEvent(&ev)) {
            switch (ev.type) {
                case SDL_EVENT_QUIT :
                    running = 0;
                    break;
                case SDL_EVENT_KEY_DOWN:
                    if(ev.key.scancode == SDL_SCANCODE_J) {
                        Vector2 t = vector2_add(player, vector2_scale(dir_player, PSIZE / 2.0f));
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
            b.pos[i] = vector2_add(b.pos[i], vector2_scale(b.dir[i], delta_time * PLAYER_SPEED * 10));
            if(b.pos[i].x > 1280 || b.pos[i].y > 720 || b.pos[i].x < 0 || b.pos[i].y < 0) {
                for(int j = i; j < b.size - 1; j++) {
                    b.pos[j] = b.pos[j + 1];
                    b.dir[j] = b.dir[j + 1];
                }

                b.size--;
                i--;
            }
        }
        
        draw(GL_LINE_STRIP, player, V2_PSIZE, angle, vao, nr_v);
        for(int i = 0; i < MAX_ASTEROIDS; i++){
            draw_asteroid(&asteroid[i], &r);
        }
        shoot(&b, &r2);

        SDL_GL_SwapWindow(window);
        counter2 = SDL_GetPerformanceCounter();
        delta_time = (float)(counter2 - counter1) / (float)freq;
        counter1 = counter2;
        frame++;
    }
    
    SDL_DestroyWindow(window);
    SDL_Quit();
    return 0;
}
