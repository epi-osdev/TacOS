#include "drivers/vesa_cli/init.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/update.h"
#include "drivers/keyboard.h"
#include "drivers/vesa_cli/clear.h"

static void init_cli_datas()
{
    vesa_cli.x = 0;
    vesa_cli.y = 0;
    vesa_cli.color = 0xFFFFFFFF;
    vesa_cli.width = 50;
    vesa_cli.height = 19;
    for (size_t i = 0; i < MAX_WIDTH_CHARS * MAX_HEIGHT_CHARS; i++) {
        vesa_cli.buffer[i] = ' ';
    }
}

static void init_callbacks()
{
    register_keyboard_callback(vesa_cli_update);
}

void init_vesa_cli()
{
    init_cli_datas();
    init_callbacks();
    clear();
}
