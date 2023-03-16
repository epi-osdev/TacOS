#include "drivers/vesa_cli.h"
#include "drivers/fs.h"
#include "string.h"
#include "drivers/vesa_cli.h"
#include "VGA.h"
#include "drivers/vesa.h"

static int __launch(const char **args)
{
    for (struct files *files = get_files(); files != NULL; files = files->next) {
        struct file *file = files->file;
        add_str_to_buffer(file->name);
        add_str_to_buffer(" ");
    }
    return 1;
}

static int __match(const char *name)
{
    return !strcmp(name, "ls");
}

void init_ls()
{
    add_command((struct command) {
        .launch = __launch,
        .match = __match
    });
}
