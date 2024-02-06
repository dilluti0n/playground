#ifndef COMMON_H_
#define COMMON_H_

#include <SDL2/SDL.h>
#include "../include/structs.h"
#include "../include/defs.h"

extern App app;
extern Pos playerPos;

void initRect(SDL_Rect *objp, Pos position, int w, int h);
void incRectPos(SDL_Rect *objp, int incX, int incY);

#endif
