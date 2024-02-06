#include "../include/input.h"
#include "../include/common.h"

/**/
void doInput(void)
{
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
        switch (event.type) {
        case SDL_QUIT:
            exit(0);
            break;
        case SDL_KEYDOWN:
            keyBoardDrive(event.key.keysym);
            return;
            break;
        default:
            break;
        }
    }
}

void keyBoardDrive(SDL_Keysym key)
{
    switch (key.scancode) {
    case SDL_SCANCODE_A:
        playerPos.x -= PLAYER_POS_LEAP;
        break;
    case SDL_SCANCODE_D:
        playerPos.x += PLAYER_POS_LEAP;
        break;
    case SDL_SCANCODE_S:
        playerPos.y += PLAYER_POS_LEAP;
        break;
    case SDL_SCANCODE_W:
        playerPos.y -= PLAYER_POS_LEAP;
        break;
    case SDL_SCANCODE_Q:
        exit(0);
        break;
    }
    if (playerPos.x < 0)
        playerPos.x += SCREEN_WIDTH;
    if (playerPos.x > SCREEN_WIDTH)
        playerPos.x -= SCREEN_WIDTH;
    if (playerPos.y < 0)
        playerPos.y += SCREEN_HEIGHT;
    if (playerPos.y > SCREEN_HEIGHT)
        playerPos.y -= SCREEN_HEIGHT;
}

