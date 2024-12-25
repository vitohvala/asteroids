#include <glad/glad.h>
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <stdlib.h>
#include <linmath.h>

#define ERROR_EXIT(E, ...)     SDL_Log(__VA_ARGS__); exit(E)
#define ERROR_RETURN(R, ...)   SDL_Log(__VA_ARGS__); return R
#define PLAYER_SPEED           25
#define MAX_ASTEROIDS          12
#define PSIZE                  40
#define R_WIDTH                1280.0f
#define R_HEIGHT               720.0f
#define DRAG                   0.035
#define CAPACITY               128
#define PI                     3.14159265359f
#define TAU                    2.0f * PI

typedef enum {
    BIG = 0,
    MEDIUM,
    SMALL,
    DEAD
} ASTEROID_SIZE;

typedef struct {
    float x, y;
} Vector2;

typedef struct {
    Vector2 pos;
    Vector2 size;
    int seed;
    Uint32 time;
    float angle;
    float vel;
    ASTEROID_SIZE as;
} Asteroid;

typedef struct {
    Vector2 pos;
    Vector2 size;
    Vector2 vel;
    Vector2 dir;
    float angle;
    Uint8 life;
} Player;

typedef struct {
    Vector2 pos[CAPACITY];
    Vector2 dir[CAPACITY];
    Uint32 time[CAPACITY];
    int size;
} Bullet;

typedef struct {
    unsigned int vao;
    unsigned int vbo;
    unsigned int size;
} Renderer;

mat4x4 projection;
unsigned int shader;
SDL_GLContext con;

SDL_Window 
*init_window(int width, int height)
{
    if (!SDL_Init(SDL_INIT_VIDEO)) {
        SDL_Log("SDL initialization failed: %s\n", SDL_GetError());
    }

    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);

    SDL_Window* window = 
        SDL_CreateWindow("Asteroid", width, height, SDL_WINDOW_OPENGL);

    if (!window) {
        ERROR_EXIT(-1, "Window creation failed: %s\n", SDL_GetError());
    }

    con = SDL_GL_CreateContext(window);
    if(!gladLoadGLLoader((GLADloadproc)SDL_GL_GetProcAddress)) {
        ERROR_EXIT(1, "Failed to initialize GL\n");
    }

    SDL_Log("GL Loaded");
    SDL_Log("VENDOR %s\n",   glGetString(GL_VENDOR));
    SDL_Log("RENDERER %s\n", glGetString(GL_RENDERER));
    SDL_Log("VERSION %s\n",  glGetString(GL_VERSION));

    return window;
}

Renderer
renderer_init(unsigned int size)
{
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

void
update_renderer(Renderer *renderer, float *vert, unsigned int size)
{
    if (size > renderer->size) {
        glBindBuffer(GL_ARRAY_BUFFER, renderer->vbo);
        glBufferData(GL_ARRAY_BUFFER, size, NULL, GL_DYNAMIC_DRAW);
        renderer->size = size;
    }
    
    glBindBuffer(GL_ARRAY_BUFFER, renderer->vbo);
    glBufferSubData(GL_ARRAY_BUFFER, 0, size, vert);
}

Vector2
vector2_scale(Vector2 *vec, const float s)
{
    Vector2 r;
    r.x = vec->x * s;
    r.y = vec->y * s;
    return r;
}

Vector2 
vector2_add(Vector2 a, Vector2 b)
{
    Vector2 r;
    r.x = a.x + b.x;
    r.y = a.y + b.y;
    return r;
}

Vector2
vector2_modf(Vector2 a, const float d1, const float d2)
{
    Vector2 v;
    v.x =  SDL_fmodf(SDL_fmodf(a.x, d1) + d1, d1);
    v.y =  SDL_fmodf(SDL_fmodf(a.y, d2) + d2, d2);
    return v;
}

void 
draw(GLenum mode, Vector2 *pos, Vector2 *size,
        float angle, unsigned int vao, int nr_v) 
{
    mat4x4 trans;
    mat4x4_identity(trans);
    mat4x4 ret;
    mat4x4_translate(trans, pos->x, pos->y, 0.0f);
    mat4x4_rotate(ret, trans, 0.0f, 0.0f, 1.0f, angle);
    mat4x4_scale_aniso(trans, ret, size->x, size->y, 0.0);

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
    Vector2 dir;
    dir.x = SDL_cosf(angle + (PI * 0.5f));
    dir.y = SDL_sinf(angle + (PI * 0.5f));
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
    if(pname == GL_LINK_STATUS) {
        glGetProgramiv(shader, pname, &success);
    } else {
        glGetShaderiv(shader, pname, &success);
    }
    
    if(!success) {
        glGetShaderInfoLog(shader, 512, NULL, infoLog);
        SDL_Log("ERROR SHADER %s COMPILATION_FAILED %s\n", err_str, infoLog);
    }

}
void 
draw_line(float x1, float y1, float x2, float y2) 
{
    float dx = x2 - x1;
    float dy = y2 - y1;
        
    float length = SDL_sqrt(dx*dx + dy*dy);
    float angle  = SDL_atan2(dy, dx);

    float vert[] = {
         0.0f, 0.0f, 0.0f,
         1.0f, 0.0f, 0.0f
    };
    
    unsigned int vao, vbo;
    vao_init(&vao, &vbo, vert, sizeof(vert));
    draw(GL_LINES, &(Vector2){x1, y1}, &(Vector2){length, 1.0f}, angle, vao, 2);
}

void 
draw_line_a(float x1, float y1, float x2, float y2, float angle) 
{
    float dx = x2 - x1;
    float dy = y2 - y1;
        
    float length = SDL_sqrt(dx*dx + dy*dy);

    float vert[] = {
         -1.0f, 0.0f, 0.0f,
         1.0f, 0.0f, 0.0f
    };
    
    unsigned int vao, vbo;
    vao_init(&vao, &vbo, vert, sizeof(vert));
    draw(GL_LINES, &(Vector2){x1, y1}, &(Vector2){length, 1.0f}, angle, vao, 2);
}
void
draw_line_v(Vector2 pos, Vector2 end_pos) 
{
    draw_line(pos.x, pos.y, end_pos.x, end_pos.y);
}

void
draw_asteroid(Asteroid *asteroid , Renderer *renderer)
{
    SDL_srand(asteroid->seed);
    int n = 7 + SDL_rand(13 - 7 + 1); 
    float vert[(n) * 3];  
    
    int index = 0;
    for(int i = 0; i < n; i++) {
        float radius = 0.6f * (1.0f + (-0.5 + SDL_randf() * (0.5 - (-0.5))));
        float angle = ((TAU * (float)(i)) / (float)n); 
        float x = radius * SDL_cosf(angle);
        float y = radius * SDL_sinf(angle);
        
        vert[index++] = x;
        vert[index++] = y;
        vert[index++] = 0.0f;
    }
    
    update_renderer(renderer, vert, n * 3 * sizeof(float));

    draw(GL_LINE_LOOP, &asteroid->pos, &asteroid->size, asteroid->angle, renderer->vao, n);    
}

void
b_append_pos(Bullet *p, Vector2 *pos, Vector2 *dir, Uint32 counter1)
{
    p->pos[p->size].x = pos->x;
    p->pos[p->size].y = pos->y;
    p->dir[p->size].x = dir->x;
    p->dir[p->size].y = dir->y;
    p->time[p->size] = counter1;

    p->size++;
    if(p->size >= CAPACITY) {
        p->size = 0;
    }
}



void
min_max(float *min, float *max, float *min_vel, float *max_vel, ASTEROID_SIZE as) 
{
    switch (as) {
        case BIG:
            *min = 60.0f;
            *min_vel = PLAYER_SPEED * 2;
            *max_vel = PLAYER_SPEED * 3.9;
            *max = 90.0f;
            break;
        case MEDIUM:
            *min = 40.0f;
            *min_vel = PLAYER_SPEED * 4;
            *max_vel = PLAYER_SPEED * 6.5;
            *max = 59.0f;
            break;
        case SMALL:
            *min = 10.0f;
            *min_vel = PLAYER_SPEED * 7;
            *max_vel = PLAYER_SPEED * 10;
            *max = 35.0f;
            break;
        case DEAD:
            break;
    }

}
void 
get_rand_ast_size_vel(Asteroid *asteroid)
{
    float min = 0, max = 0;
    float min_vel = 0, max_vel = 0;
    min_max(&min, &max, &min_vel, &max_vel, asteroid->as);
    asteroid->size.x = min + SDL_randf() * (max - min); 
    asteroid->size.y = min + SDL_randf() * (max - min);
    asteroid->vel =  min_vel + SDL_randf() * (max_vel - min_vel);
}

void 
get_rand_ast(Asteroid *asteroid)
{
    asteroid->pos.x = SDL_randf() * R_WIDTH;
    asteroid->pos.y = SDL_randf() * R_HEIGHT;
    get_rand_ast_size_vel(asteroid); 
    asteroid->angle = ((SDL_randf() * 2.0f) - 1.0f) * TAU;
    asteroid->seed = SDL_rand_bits();
}

Vector2
drw_t(Vector2 *p, Vector2 *size) {
    Vector2 tmp = {-100, -100};
    if (p->x - (size->x ) < 0){
        tmp.x = p->x + R_WIDTH;
        tmp.y = p->y;
    }
    if (p->y - (size->y) < 0){
        tmp.y = p->y + R_HEIGHT;
        tmp.x = p->x;
    }
    if (p->x + (size->x) > R_WIDTH){
        tmp.x = p->x - R_WIDTH;
        tmp.y = p->y;
    }
    if (p->y + (size->y) > R_HEIGHT){
        tmp.y = p->y - R_HEIGHT;
        tmp.x = p->x;
    }
    return tmp;
}

bool collision(Vector2 *pos1, Vector2 *pos2, Vector2 *size) {
    if(SDL_sqrtf((pos1->x - pos2->x) * (pos1->x - pos2->x) + 
                (pos1->y - pos2->y) * (pos1->y - pos2->y)) < (size->x / 2)) {
        return true;

    }
    if(SDL_sqrtf((pos1->x - pos2->x) * (pos1->x - pos2->x) + 
                (pos1->y - pos2->y) * (pos1->y - pos2->y)) < (size->y / 2)) {
        return true;

    }
    return false;
}

bool 
ast_collision(Vector2 *pos, Asteroid *asteroid, size_t *ast_size)
{
    for(size_t i = 0; i < *ast_size; i++) {
        bool r = collision(pos, &asteroid[i].pos, &asteroid[i].size);
        Uint32 tick = SDL_GetTicks() + 1300;
        if(r && SDL_GetTicks() > asteroid[i].time){
            switch (asteroid[i].as) {
                case BIG:
                    asteroid[i].as = MEDIUM;
                    //get_rand_ast(&asteroid[i]);
                    get_rand_ast_size_vel(&asteroid[i]);
                    asteroid[i].angle = ((SDL_randf() * 2.0f) - 1.0f) * TAU;
                    asteroid[i].seed = SDL_rand_bits();
                    asteroid[i].time = tick;
                    
                    asteroid[*ast_size].as = MEDIUM;
                    asteroid[*ast_size].time = tick;
                    get_rand_ast(&asteroid[*ast_size]);
                    asteroid[*ast_size].pos.x = asteroid[i].pos.x;
                    asteroid[*ast_size].pos.y = asteroid[i].pos.y + asteroid[i].size.y;
                    
                    asteroid[*ast_size + 1].as = MEDIUM;
                    asteroid[*ast_size + 1].time = tick;
                    get_rand_ast(&asteroid[*ast_size + 1]);
                    asteroid[*ast_size + 1].pos.x = asteroid[*ast_size].pos.x + asteroid[*ast_size].size.x;
                    asteroid[*ast_size + 1].pos.y = asteroid[*ast_size].pos.y + (asteroid[*ast_size].size.y / 2);
                    
                    *ast_size += 2;
                    break;
                case MEDIUM:
                    asteroid[i].as = SMALL;
                    //get_rand_ast(&asteroid[i]);
                    get_rand_ast_size_vel(&asteroid[i]); 
                    asteroid[i].angle = ((SDL_randf() * 2.0f) - 1.0f) * TAU;
                    asteroid[i].seed = SDL_rand_bits();
                    asteroid[i].time = tick;
                    
                    asteroid[*ast_size].as = SMALL;
                    get_rand_ast(&asteroid[*ast_size]);
                    asteroid[*ast_size].time = tick;
                    asteroid[*ast_size].pos.x = asteroid[i].pos.x;
                    asteroid[*ast_size].pos.y = asteroid[i].pos.y + asteroid[i].size.y;

                    *ast_size += 1;
                    break;
                case SMALL:
                    asteroid[i].time = tick;
                    asteroid[i].as = DEAD;
                    //for(size_t j = i; j < *ast_size - 1; j++){
                    //    asteroid[j] = asteroid[j + 1];
                    //}
                    //*ast_size -= 1;
                    break;
                case DEAD:
                    break;
            }
            return true;
        }
    } 
   return false;
}

int
main(int argc, char **argv)
{
    (void)argc;
    (void)argv;

    SDL_Window *window = init_window(1280, 720);
    /* This makes our buffer swap syncronized with the monitor's vertical refresh */
    SDL_GL_SetSwapInterval(1);
    uint8_t running = 1;
    SDL_srand(0);

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

    glViewport(0, 0, R_WIDTH, R_HEIGHT);

    unsigned int vao, vbo;
    vao_init(&vao, &vbo, vertices, sizeof(vertices));

    Asteroid asteroid[MAX_ASTEROIDS * 2];

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
        //"uniform float t;\n"
        "void main() { \n"
        //"    vec3 color = 0.9 + 0.5 * (cos(t * vec3(0.5, 0.2, 0.3)));\n"
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
    float delta_time = 0.0f;

    mat4x4_ortho(projection,  0.0f, R_WIDTH, R_HEIGHT, 0.0f, 
            -1.0f, 1.0f); 

    Uint8 frame = 0;
    size_t ast_size = MAX_ASTEROIDS;

    for(size_t i = 0; i < ast_size; i++){
        asteroid[i].as = SDL_rand(3);
        get_rand_ast(&asteroid[i]);
        asteroid[i].time = 0;
    }
    
    bool dead = false;
    Uint32 dtime = 0;
    Bullet b = {.size = 0};

    glad_glPointSize(3); 
    Renderer r = renderer_init(0);
    Renderer r2 = renderer_init(0);
    Renderer r3 = renderer_init(0);

    Uint32 tick1 = SDL_GetTicks();

    Player p;
    p.pos.x = R_WIDTH / 2;
    p.pos.y = R_HEIGHT / 2;
    p.size.x = PSIZE;
    p.size.y = PSIZE;
    p.life = 3;
    p.angle = 0.0f;
    p.vel.x = .0f;
    p.vel.y = .0f;
    p.dir = get_direction(p.angle);

    Vector2 pos_p[6];
    bool act_p = false;
    Uint32 p_tm = 0;
    Vector2 dir_p[6];

    float angle = 0.0f;
   
    while(running) {
        int nr_v = 6;
        SDL_Event ev;
        while(SDL_PollEvent(&ev)) {
            switch (ev.type) {
                case SDL_EVENT_QUIT :
                    running = 0;
                    break;
                case SDL_EVENT_KEY_UP:
                    if(ev.key.scancode == SDL_SCANCODE_J && !dead) {
                        Vector2 t = vector2_add(p.pos, vector2_scale(&p.dir, PSIZE / 2.0f));
                        b_append_pos(&b, &t, &p.dir, tick1);
                    }
                    break;
            }
        }

        glClearColor(0.0f, .0f, .0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        const bool *keyboard = SDL_GetKeyboardState(NULL);
        if(keyboard[SDL_SCANCODE_W] && !dead) {
            p.vel = vector2_add(p.vel,
                    vector2_scale(&p.dir, delta_time * PLAYER_SPEED));
            if(frame % 3 == 0)
                nr_v = 9;
        }

        if(keyboard[SDL_SCANCODE_Q] && !dead) {
            p.angle -= delta_time * (PI * 2.0f) * 1.5f;
            p.dir = get_direction(p.angle);

        } else if (keyboard[SDL_SCANCODE_E] && !dead) {
            p.angle += delta_time * (PI * 2.0f) * 1.5f;
            p.dir = get_direction(p.angle);
        }

        if(!dead) {
            p.vel = vector2_scale(&p.vel, 1.0f - DRAG);
            p.pos = vector2_add(p.pos, p.vel);

            Vector2 tmp_player = drw_t(&p.pos, &p.size);

            if(tmp_player.x > -100 && tmp_player.y > -100) {
                draw(GL_LINE_STRIP, &tmp_player, &p.size, p.angle, vao, nr_v);
            }

            p.pos = vector2_modf(p.pos, R_WIDTH, R_HEIGHT);
        }
        for(size_t i = 0; i < ast_size; i++) {
            if(asteroid[i].time > tick1) {
                int ind_p = 0;
                float vert_p[6 * 3];
                if(!act_p){
                    p_tm = SDL_GetTicks() + 1300;
                    for(int k = 0; k < 6; k++) {
                        pos_p[k] = asteroid[i].pos;
                        dir_p[k].x = SDL_randf() + 0.1;
                        dir_p[k].y = SDL_randf() + 0.1;
                    }
                    act_p = true;
                }

                for(int j = 0; j < 6; j++) {
                    pos_p[j] = vector2_add(pos_p[j], vector2_scale(&dir_p[j], PLAYER_SPEED * delta_time));
                    vert_p[ind_p++] = pos_p[j].x; 
                    vert_p[ind_p++] = pos_p[j].y;
                    vert_p[ind_p++] = 0.0f; 
                }
                update_renderer(&r3, vert_p, 6 * 3 * sizeof(vert_p));
                draw(GL_POINTS, &(Vector2){0, 0}, &(Vector2){1,1}, 0.0f, r3.vao, ind_p/3);
                continue;
            }
            
            if(asteroid[i].as == DEAD) {
                asteroid[i] = asteroid[ast_size - 1];
                ast_size--;
                i--;
            }

            Vector2 dir = get_direction(asteroid[i].angle);
            asteroid[i].pos = vector2_add(asteroid[i].pos, vector2_scale(&dir, delta_time * asteroid[i].vel));

            Vector2 tmp_ast = drw_t(&asteroid[i].pos, &asteroid[i].size);
            if(tmp_ast.x > -100 && tmp_ast.y > -100) {
                Asteroid ast_ = asteroid[i];
                ast_.pos = tmp_ast;
                draw_asteroid(&ast_, &r);
            }
            if(collision(&p.pos, &asteroid[i].pos, &asteroid[i].size) && !dead) {
                dead = true;
                dtime = SDL_GetTicks() + 1300;
                angle = 0.0f;
            }
            asteroid[i].pos = vector2_modf(asteroid[i].pos, R_WIDTH, R_HEIGHT);
            draw_asteroid(&asteroid[i], &r);
        }
        if(p_tm < tick1) {
            act_p = false;
        }
        //shoot(&b, &r2);
        float vert[b.size * 3];
        int ind = 0;
        for(int i = 0; i < b.size; i++) {
            if(tick1 > (b.time[i] + 1300) || ast_collision(&b.pos[i], asteroid, &ast_size)) {
                //b.time[i] = tick1;
                b.pos[i] = b.pos[b.size - 1]; 
                b.dir[i] = b.dir[b.size - 1]; 

                b.size--;
                i--;
                continue;
            }

            b.pos[i] = vector2_add(b.pos[i], vector2_scale(&b.dir[i], delta_time * PLAYER_SPEED * 28.0f));
            b.pos[i] = vector2_modf(b.pos[i], R_WIDTH, R_HEIGHT);
        
            vert[ind++] = b.pos[i].x;
            vert[ind++] = b.pos[i].y;
            vert[ind++] = 0.0f;
        }
        update_renderer(&r2, vert, b.size * 3 * sizeof(float));
        draw(GL_POINTS, &(Vector2){0, 0}, &(Vector2){1, 1}, 0.0f, r2.vao, ind / 3);

        for(int i = 0; i < p.life; i++) {
            draw(GL_LINE_STRIP, &(Vector2){PSIZE * i + 20, 40}, &p.size, PI, vao, 6);
        }

        if(dead && dtime > tick1) {
            p.vel.y = 0;
            p.vel.x = 0;
            angle += (PI/2) * delta_time;
            draw_line_a(p.pos.x, p.pos.y, p.pos.x + 10, p.pos.y + 10, angle);
            draw_line_a(p.pos.x - 10, p.pos.y, p.pos.x, p.pos.y + 10, -angle);
            draw_line_a(p.pos.x - 5, p.pos.y + 10, p.pos.x + 5, p.pos.y + 10, angle/2);
        } else {
            if(dead) p.life--;
            angle = 0.0f;
            dead = false;
            draw(GL_LINE_STRIP, &p.pos, &p.size, p.angle, vao, nr_v);
        }

        if(p.life < 1) running = 0;
        SDL_GL_SwapWindow(window);
        counter2 = SDL_GetPerformanceCounter();
        delta_time = (float)(counter2 - counter1) / (float)freq;
        frame++;
        tick1 = SDL_GetTicks();
        //glUseProgram(shader);
        //glUniform1f(glGetUniformLocation(shader, "t"), ((float)tick1 / 1000));
        counter1 = counter2;
    }
    
    glDeleteProgram(shader);
    SDL_GL_DestroyContext(con);
    SDL_DestroyWindow(window);
    SDL_Quit();
    return 0;
}
