#include <glad/glad.h>
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <math.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <linmath.h>

#define ERROR_EXIT(E, ...)     fprintf(stderr, __VA_ARGS__); exit(E)
#define ERROR_RETURN(R, ...)   fprintf(stderr, __VA_ARGS__); return R
#define PLAYER_SPEED           25
#define MAX_ASTEROIDS          20
#define VERTEX_SIZE(vertex, x) ((sizeof(vertex) / sizeof(vertex[0]) / x))
#define PSIZE                  40
#define V2_PSIZE               (Vector2){ .x = PSIZE, .y = PSIZE}

typedef struct {
    float x, y;
} Vector2;

mat4x4 projection;

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
        float angle, unsigned int vao, unsigned int shader, int nr_v) 
{
    mat4x4 trans;
    mat4x4_identity(trans);
    mat4x4 ret;
    mat4x4_translate(trans, pos.x, pos.y, 0.0f);
    mat4x4_scale_aniso(ret, trans, size.x, size.y, 0.0);
    mat4x4_rotate(trans, ret, 0.0f, 0.0f, 1.0f, angle);

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

    float asteroid_vertices[] = {
        -0.5f,  0.0f,  0.0f,
         0.0f,  0.5f,  0.0f,
         0.5f,  0.2f,  0.0f,
         0.4f, -0.3f,  0.0f,
         0.0f, -0.5f,  0.0f,
        -0.4f, -0.2f,  0.0f,
        -0.5f,  0.0f,  0.0f
    };

    unsigned int vao, vbo;
    vao_init(&vao, &vbo, vertices, sizeof(vertices));

    unsigned int vao1, vbo1;
    vao_init(&vao1, &vbo1, asteroid_vertices, sizeof(asteroid_vertices));

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

    unsigned int shader = glCreateProgram();
    glAttachShader(shader, vertex_shader);
    glAttachShader(shader, fragment_shader);
    glLinkProgram(shader);
    check_shader_err(shader, GL_LINK_STATUS, "PROGRAM");

    glDeleteShader(vertex_shader);
    glDeleteShader(fragment_shader);

    Uint64 freq = SDL_GetPerformanceFrequency();
    Uint64 counter1 = SDL_GetPerformanceCounter(), counter2;
    float delta_time;

    mat4x4_ortho(projection,  0.0f, 1280, 720, 0.0f, 
            -1.0f, 1.0f); 

    Uint8 frame = 0;

    //Mozda bi ovo trebalo da bude Rectangle
    Vector2 player = { .x = 100.0f, .y = 100.0f };
    Vector2 player_vel = { .x = .0f, .y = .0f };

    Vector2 asteroid[MAX_ASTEROIDS];
    for(int i = 1; i < MAX_ASTEROIDS; i++){
        asteroid[i].x = (float)(rand() % (1280 - 1) + 1);
        asteroid[i].y = (float)(rand() % (720 - 1) + 1);
    }

    float angle_ast[MAX_ASTEROIDS];
    for(int i = 0; i < MAX_ASTEROIDS; i++) {
        angle_ast[i] = ((float)(rand() / (float)(RAND_MAX)) * (M_PI * 2.0f));
    }

    float angle = 0.0f;

    while(running) {
        int nr_v = 6;
        
        SDL_Event ev;
        while(SDL_PollEvent(&ev)) {
            switch (ev.type) {
                case SDL_EVENT_QUIT :
                    running = 0;
                    break;
            }
        }

        glClearColor(0.17f, .2f, .23f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        const bool *keyboard = SDL_GetKeyboardState(NULL);
        if(keyboard[SDL_SCANCODE_W]) {
            player_vel = vector2_add(player_vel,
                    vector2_scale(get_direction(angle), delta_time * PLAYER_SPEED));
            if(frame % 3 == 0)
                nr_v = 9;
        }

        if(keyboard[SDL_SCANCODE_Q]) {
            angle -= delta_time * (M_PI * 2.0f) * 1.5f;
        } else if (keyboard[SDL_SCANCODE_E]) {
            angle += delta_time * (M_PI * 2.0f) * 1.5f;
        }

        player_vel = vector2_scale(player_vel, 1.0f - 0.05);
        player = vector2_add(player, player_vel);
        player = vector2_modf(player, 1280.0f, 720.0f);

        for(int i = 0; i < MAX_ASTEROIDS; i++) {
            asteroid[i] = vector2_add(asteroid[i], vector2_scale(get_direction(angle_ast[i]), 
                                                                 delta_time * (PLAYER_SPEED * 2.5f)));
            asteroid[i] = vector2_modf(asteroid[i], 1280.0f, 720.0f);
        }

        draw(GL_LINE_STRIP, player, V2_PSIZE, angle, vao, shader, nr_v);
        for(int i = 0; i < MAX_ASTEROIDS; i++) {
            draw(GL_LINE_STRIP, asteroid[i], V2_PSIZE, .0f, vao1, shader, 
                 VERTEX_SIZE(asteroid_vertices, 3));
        }

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
