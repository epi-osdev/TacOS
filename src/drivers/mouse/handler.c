#include "drivers/mouse/handler.h"
#include "drivers/pic.h"
#include "VGA.h"
#include "cursor.h"
#include "mouse_timer.h"

void mouse_handler(__attribute__((unused))registers_t *regs)
{

    disable_entry(33);
    uint8_t mouse_data_cycle = 0;
    uint8_t packet_ready = 0;
    uint8_t mouse_byte[4];
    while ( mouse_data_cycle < 4 && packet_ready == 0) {
        if (packet_ready == 1)
            break;
        switch (mouse_data_cycle) {
            case 0 : {
                uint8_t data = port_byte_in(0x60);
                if ((data & 0b00001000) == 0)
                    break;
                mouse_byte[0] = data;
                mouse_data_cycle++;
                break;
            }
            case 1 :
                mouse_byte[1] = port_byte_in(0x60);
                mouse_data_cycle++;
                break;
            case 2 :
                mouse_byte[2] = port_byte_in(0x60);
                mouse_data_cycle = 0;
                packet_ready = 1;
                break;
        }
    }

    /*if (passed_mouse_timer(1000) != 1) {
        mouse_counter();
        return;
    }*/
    set_mouse_timer(0);
    display_cursor(mouse_byte);
    enable_entry(33);
}
