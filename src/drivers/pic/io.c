#include "io.h"

uint8_t port_byte_in(uint16_t port)
{
    uint8_t result = 0;

    __asm__ __volatile__("in %%dx, %%al" : "=a" (result) : "d" (port));
    return (result);
}

void port_byte_out(uint16_t port, uint8_t data)
{
    __asm__ __volatile__("out %%al, %%dx" : : "a" (data), "d" (port));
}
