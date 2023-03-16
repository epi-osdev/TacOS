#include "drivers/vesa_cli.h"
#include "drivers/fs.h"
#include "string.h"
#include "drivers/vesa_cli.h"
#include "VGA.h"
#include "drivers/vesa.h"

static int __launch(const char **args)
{
    struct file *folder = get_current_folder();

    if (!folder)
        return 0;

    struct folder_content *content = folder->content;

    for (struct files *files = content->files; files; files = files->next) {
        add_str_to_buffer(files->file->name);
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
