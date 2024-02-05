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

int main(int argc, char *argv[])
{
    memset(&app, 0, sizeof(App));
    initSDL();
    atexit(SDL_Quit);
    for (;;) {
        prepareScene();
        doInput();
        presentScene();
        SDL_Delay(16);
    }
    return 0;
}

