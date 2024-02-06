#include "../include/common.h"

void initRect(SDL_Rect *objp, Pos position, int w, int h)
{
    objp->x = position.x;
    objp->y = position.y;
    objp->w = w;
    objp->h = h;
}


void incRectPos(SDL_Rect *objp, int incX, int incY)
{
    objp->x += incX;
    objp->y += incY;
}
