/*
** EPITECH PROJECT, 2022
** mouse_timer
** File description:
** mouse_timer
*/

#include "mouse_timer.h"

static uint32_t mouse_timer = 0;

void set_mouse_timer(uint32_t new_mouse_timer)
{
    mouse_timer = new_mouse_timer;
}

uint32_t get_mouse_timer()
{
    return mouse_timer;
}

void mouse_counter()
{
    mouse_timer++;
}

int passed_mouse_timer(uint32_t timer)
{
    uint32_t prev_timer = get_mouse_timer();
    if (prev_timer >= timer)
        return 1;
    return 0;
}
