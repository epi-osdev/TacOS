#include "drivers/vesa_cli/commands.h"
#include "drivers/vesa_cli/buffer.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa.h"

void launch_command()
{
    char *line = (char *)get_line(vesa_cli.height - 1);

    GUI.print_s(line, 3, 4, 0x00FF00);
}