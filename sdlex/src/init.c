#include "../include/init.h"
#include "../include/common.h"

void initSDL(void)
{
    int rendererFlags, windowFlags;
    rendererFlags = SDL_RENDERER_ACCELERATED;
    windowFlags = SDL_WINDOW_SHOWN;
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        printf("Couldn't initialize SDL: %s\n", SDL_GetError());
        exit(1);
    }
    if ((app.window = SDL_CreateWindow("mygame",
                        SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
                        SCREEN_WIDTH, SCREEN_HEIGHT, /* defs.h */
                        windowFlags)) == NULL) {
        printf("Failed to open %d x %d window: %s\n",
                SCREEN_WIDTH, SCREEN_HEIGHT, SDL_GetError());
        exit(1);
    }
    SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "linear");
    if ((app.renderer = SDL_CreateRenderer(app.window,
                    -1, rendererFlags)) == NULL) {
        printf("Failed to create renderer: %s\n", SDL_GetError());
        exit(1);
    }
}

