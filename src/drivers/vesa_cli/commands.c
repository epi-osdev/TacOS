#include "drivers/vesa_cli/commands.h"
#include "drivers/vesa_cli/buffer.h"
#include "drivers/vesa_cli/prompt.h"
#include "string.h"
#include "memory.h"
#include "drivers/vesa.h"
#include "string.h"

static void launch_unknown_command(const char *name)
{
    add_str_to_buffer("UNKNOWN COMMAND: ");
    add_str_to_buffer(name);
}

static void run_command(const char *name, const char **args)
{
    struct command_list *list_node = command_list;

    if (command_list == NULL)
        goto no_command_found;
    for (int i = 0; list_node; list_node = list_node->next, i++) {
        struct command *command = list_node->command;
        if (command->match(name)) {
            command->launch(args);
            return;
        }
    }
no_command_found:
    launch_unknown_command(name);
}

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

static struct command_list *create_empty_command_list()
{
    struct command_list *cmdlist = malloc(sizeof(struct command_list));

    memset(cmdlist, 0, sizeof(struct command_list));
    return cmdlist;
}

static struct command *create_empty_command()
{
    struct command *command = malloc(sizeof(struct command));

    memset(command, 0, sizeof(struct command));
    return command;
}

void add_command(struct command command)
{
    if (command_list == NULL) {
        command_list = create_empty_command_list();
        command_list->command = create_empty_command();
        (*command_list->command) = command;
        return;
    }
    struct command_list *tmp = command_list;
    for (; tmp->next; tmp = tmp->next);
    tmp->next = create_empty_command_list();
    tmp->next->command = create_empty_command();
    (*tmp->next->command) = command;
}
