#include "drivers/vesa_cli/clear.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa.h"

void clear_cli()
{
    for (uint32_t x = 0; x < vesa_cli.width; x++) {
        for (uint32_t y = 0; y < vesa_cli.height; y++) {
            pos2i_t pos = {x, y};
            pos = GUI.convert_pos2i(pos);
            GUI.print_c(24, pos.x, pos.y, 0x000000);    // 24 is the full block character
        }
    }
}

void clear_char(pos2i_t pos)
{
    pos = GUI.convert_pos2i(pos);
    GUI.print_c(24, pos.x, pos.y, 0x000000);            // 24 is the full block character
}