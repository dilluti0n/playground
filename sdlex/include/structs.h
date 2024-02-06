#ifndef STRUCTS_H_
#define STRUCTS_H_

typedef struct {
    SDL_Renderer *renderer;
    SDL_Window *window;
} App;

typedef struct {
    int x, y;
} Pos;

#endif
