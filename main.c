#include <glad/glad.h>
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <linmath.h>

#define ERROR_EXIT(E, ...) fprintf(stderr, __VA_ARGS__); exit(E)
#define ERROR_SDLQUIT(...) fprintf(stderr, __VA_ARGS__); SDL_Quit()
#define PLAYER_SPEED 25

typedef struct {
    float x, y;
} Vector2;

SDL_Window *init_window(int width, int height) {
    if (!SDL_Init(SDL_INIT_VIDEO)) {
        printf("SDL initialization failed: %s\n", SDL_GetError());
    }

    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);

    SDL_Window* window = 
        SDL_CreateWindow("Window", width, height, SDL_WINDOW_OPENGL);
    
    if (!window) {
        ERROR_SDLQUIT("Window creation failed: %s\n", SDL_GetError());
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

void draw_ship(Vector2 pos, Vector2 size, float angle) {
// TODO:
    (void)pos;
    (void)size;
    (void)angle;
}

Vector2 vector2_scale(Vector2 vec, const float s) {
    Vector2 r;
    r.x = vec.x * s;
    r.y = vec.y * s;
    return r;
}
Vector2 vector2_add(Vector2 a, Vector2 b) {
    return (Vector2){ .x = a.x + b.x, .y = a.y + b.y };
}
Vector2 vector2_modf(Vector2 a, const float d1, const float d2) {
    return (Vector2){ .x = fmodf(fmodf(a.x, d1) + d1, d1),
                      .y = fmodf(fmodf(a.y, d2) + d2, d2) };
}

int main(void) {
    
    SDL_Window *window = init_window(1280, 720);

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
    glGenVertexArrays(1, &vao);
    glGenBuffers(1, &vbo);

    glBindVertexArray(vao);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    uint8_t running = 1;

    int  success;
    char infoLog[512];

    const char *vertexShaderSource = "#version 330 core\n"
    "layout (location = 0) in vec3 aPos;\n"
    "uniform mat4 transform;\n"
    "void main()\n"
    "{\n"
    "   gl_Position = transform * vec4(aPos.xyz, 1.0);\n"
    "}\0";

    unsigned int vertex_shader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertex_shader, 1, &vertexShaderSource, 0);
    glCompileShader(vertex_shader);

    glGetShaderiv(vertex_shader, GL_COMPILE_STATUS, &success);

    if(!success) {
        glGetShaderInfoLog(vertex_shader, 512, NULL, infoLog);
        fprintf(stderr, "ERROR SHADER VERTEX COMPILATION_FAILED %s\n", infoLog);
    }

    const char *fragmentShaderSource  = "#version 330 core\n"
        "out vec4 FragColor;\n"
        "void main() { \n"
        "    FragColor = vec4(1.0, 1.0, 1.0, 1.0f);\n"
        "}\0"; 

    unsigned int fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragment_shader, 1, &fragmentShaderSource, 0);
    glCompileShader(fragment_shader);
    glGetShaderiv(fragment_shader, GL_COMPILE_STATUS, &success);

    if(!success) {
        glGetShaderInfoLog(fragment_shader, 512, NULL, infoLog);
        fprintf(stderr, "ERROR SHADER FRAGMENT COMPILATION_FAILED %s\n", infoLog);
    }
    unsigned int shader = glCreateProgram();

    glAttachShader(shader, vertex_shader);
    glAttachShader(shader, fragment_shader);
    glLinkProgram(shader);

    glGetProgramiv(shader, GL_LINK_STATUS, &success);
    if(!success) {
        glGetProgramInfoLog(shader, 512, NULL, infoLog);
        fprintf(stderr, "ERROR SHADER Program COMPILATION_FAILED %s\n", infoLog);
    }

    glDeleteShader(vertex_shader);
    glDeleteShader(fragment_shader);

    Uint64 freq = SDL_GetPerformanceFrequency();
    Uint64 counter1 = SDL_GetPerformanceCounter();
    Uint64 counter2;
    float delta_time;

    mat4x4 projection;
    mat4x4_ortho(projection,  0.0f,    
                 1280, 720, 0.0f, 
                -1.0f, 1.0f); 

    Uint8 frame = 0;

    //Mozda bi ovo trebalo da bude Rectangle
    Vector2 player = { .x = 100.0f, .y = 100.0f };


    Vector2 player_vel = { .x = .0f, .y = .0f };

    float angle = 0.0f;

    while(running) {
        SDL_Event ev;
        int nr_v = 6;
        while(SDL_PollEvent(&ev)) {
            switch (ev.type) {
                case SDL_EVENT_QUIT:
                    running = 0;
                    break;
            }
        }

        Vector2 dir;
        dir.x = cosf(angle + (M_PI * 0.5));
        dir.y = sinf(angle + (M_PI * 0.5));

        const bool *keyboard = SDL_GetKeyboardState(NULL);
        if(keyboard[SDL_SCANCODE_W]) {
            player_vel = vector2_add(player_vel,
                                    vector2_scale(dir, PLAYER_SPEED));
            if(frame % 3 == 0)
                nr_v = 9;
        }

        if(keyboard[SDL_SCANCODE_Q]) {
            angle -= delta_time * (M_PI * 2) * 1.5f;
        } else if (keyboard[SDL_SCANCODE_E]) {
            angle += delta_time * (M_PI * 2) * 1.5f;
        }

        player_vel = vector2_scale(player_vel, 1.0f - 0.05);
        player.x += player_vel.x * delta_time;
        player.y += player_vel.y * delta_time;
        player = vector2_modf(player, 1280.0f, 720.0f);
    
        mat4x4 trans;
        mat4x4_identity(trans);
        mat4x4 ret;
        mat4x4_translate(trans, player.x, player.y, 0.0f);
        mat4x4_scale_aniso(ret, trans, 40.0, 40.0, 0.0);
        mat4x4_rotate(trans, ret, 0.0f, 0.0f, 1.0f, angle);

        mat4x4_mul(ret, projection, trans);
        glClearColor(0.17f, .2f, .23f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        
        glUseProgram(shader);
        glUniformMatrix4fv(glGetUniformLocation(shader, "transform"),
                            1, GL_FALSE, (GLfloat *)ret);
        glBindVertexArray(vao);
        glDrawArrays(GL_LINE_STRIP, 0, nr_v);
        
        SDL_GL_SwapWindow(window);

        counter2 = SDL_GetPerformanceCounter();
        Uint64 elapsed = counter2 - counter1;
        counter1 = counter2;
        delta_time = (float)elapsed / freq;
        frame++;
    }

    SDL_DestroyWindow(window);
    SDL_Quit();
    return 0;
}
