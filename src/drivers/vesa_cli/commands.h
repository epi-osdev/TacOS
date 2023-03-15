#ifndef __TOS_DRIVERS_VESA_CLI_COMMANDS_H__
    #define __TOS_DRIVERS_VESA_CLI_COMMANDS_H__

    #include "drivers/vesa_cli/datas.h"

void launch_command();
void init_command_list();
void add_command(struct command command);

#endif