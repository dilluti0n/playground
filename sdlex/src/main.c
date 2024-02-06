#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "../include/common.h"
#include "../include/init.h"
#include "../include/structs.h"
#include "../include/draw.h"
#include "../include/input.h"
#include "../include/defs.h"

App app;
Pos playerPos = {
    .x = PLAYER_POS_INIT_X,
    .y = PLAYER_POS_INIT_Y,
};

int main(int argc, char *argv[])
{
    initSDL();
    atexit(SDL_Quit);
    for (;;) {
        prepareScene();
        drawPlayer();
        doInput();
        presentScene();
        SDL_Delay(16);
    }
    return 0;
}

