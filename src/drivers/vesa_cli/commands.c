#include "drivers/vesa_cli/commands.h"
#include "drivers/vesa_cli/buffer.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/prompt.h"
#include "drivers/vesa_cli/commands/launch.h"
#include "utils/string.h"
#include "drivers/vesa.h"

void launch_command()
{
    char *line = (char *)get_line(vesa_cli.y - 1);
    line = &line[strlen((char *)vesa_cli.prompt)]; // Delete prompt
    GUI.print_s("line: ", 0, 200, 0xFF0000);
    GUI.print_s(line, 400, 200, 0xFF0000);
    char **args = split(line, " ");
    GUI.print_s("args[0]: ", 0, 300, 0xFF0000);
    GUI.print_s(args[0], 400, 300, 0xFF0000);
    GUI.print_s("args[1]: ", 0, 400, 0xFF0000);
    GUI.print_s(args[1], 400, 400, 0xFF0000);
    // for (size_t i = 0; args[i]; i++) {
    //     char fmt[] = "Hello World";
    //     GUI.print_s(fmt, 0, i * 40 + 100, 0x00FF00);
    // }
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