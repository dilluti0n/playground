#include "../include/draw.h"
#include "../include/common.h"

void prepareScene(void)
{
    SDL_SetRenderDrawColor(app.renderer, RGB_SKYBLUE, SDL_ALPHA_OPAQUE);
    SDL_RenderClear(app.renderer);
}

void drawPlayer(void)
{
    SDL_Rect obj;
    const int wid = PLAYER_WIDTH, hei = PLAYER_HEIGHT;
    initRect(&obj, playerPos, wid, hei);
    SDL_RenderClear(app.renderer);
    SDL_SetRenderDrawColor(app.renderer, RGB_BLUE, SDL_ALPHA_OPAQUE);
    SDL_RenderFillRect(app.renderer, &obj);
}

void presentScene(void)
{
    SDL_RenderPresent(app.renderer);
}
