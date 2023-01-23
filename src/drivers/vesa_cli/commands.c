#include "drivers/vesa_cli/commands.h"
#include "drivers/vesa_cli/buffer.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/prompt.h"
#include "drivers/vesa_cli/commands/launch.h"
#include "string.h"

void launch_command()
{
    char *line = (char *)get_line(vesa_cli.y - 1);
    line = &line[strlen((char *)vesa_cli.prompt)]; // Delete prompt
    char **args = split(line, " ");
    char *command_name = args[0];
    args = &args[1];

    run_command(command_name, (const char **)args);
    vesa_cli.x = 0;
    vesa_cli.y++;
    if (vesa_cli.y >= vesa_cli.height) {
        vesa_cli.y--;
        move_buffer_up(1);
    }
}