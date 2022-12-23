#include "drivers/mouse/init.h"
#include "drivers/mouse/handler.h"
#include "drivers/idt.h"
#include "drivers/pic.h"
#include "VGA.h"
#include "cursor.h"

void mouse_wait()
{
    uint32_t timeout = 1000000;
    while (timeout--){
        if((port_byte_in(0x64) & 0b10) == 0)
            return;
    }
}

void mouse_wait_input()
{
    uint32_t timeout = 1000000;
    while (timeout--){
        if(port_byte_in(0x64) & 0b1)
            return;
    }
}

void mouse_write(uint8_t mouse_param)
{
    mouse_wait();
    port_byte_out(0x64, 0xD4);
    mouse_wait();
    port_byte_out(0x60, mouse_param);
}

uint8_t mouse_read()
{
    mouse_wait_input();
    return port_byte_in(0x60);
}

void set_sample_rate(uint8_t rate)
{
    port_byte_out(0x60, 0xF3);
    mouse_read();
    port_byte_out(0x60, rate);
    mouse_read();
}

void set_resolution(uint8_t resolution)
{
    port_byte_out(0x60, 0xE8);
    mouse_read();
    port_byte_out(0x60, resolution);
    mouse_read();
}

void set_scaling(uint8_t scaling)
{
    port_byte_out(0x60, 0xE6);
    mouse_read();
    port_byte_out(0x60, scaling);
    mouse_read();
}

void init_mouse()
{
    uint8_t mouse_id = 0;
    char str[] = "Initializing mouse... mouse id %d";

    set_sample_rate(10);
    //set_resolution(0);
    //set_scaling(2);

    port_byte_out(0x64, 0xA8);
    mouse_wait();

    port_byte_out(0x64, 0x20);
    mouse_wait_input();


    uint8_t status = port_byte_in(0x60);
    status |= 0b10;
    mouse_wait();

    port_byte_out(0x64, 0x60);
    mouse_wait();

    port_byte_out(0x60, status);

    mouse_write(0xF6);
    mouse_read();

    mouse_write(0xF4);
    mouse_read();

    set_callback(44, mouse_handler);
    enable_entry(44);

    vga_printf_at(str, VGA_MAKE_COLOR(VGA_BLACK, VGA_BLUE), 0, 1, mouse_id);
}
