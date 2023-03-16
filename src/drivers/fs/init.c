#include "drivers/fs/datas.h"
#include "types.h"
#include "memory.h"
#include "files.h"
#include "file.h"
#include "arch.h"
#include "folder.h"
#include "string.h"

#include <stdarg.h>

static struct files *_files(struct files files) {
    struct files *tmp = malloc(sizeof(struct files));

    memset(tmp, 0, sizeof(struct files));
    *tmp = files;
    return tmp;
}

static struct file *_file(struct file file)
{
    struct file *f = malloc(sizeof(struct file));

    memset(f, 0, sizeof(struct file));
    *f = file;
    return f;
}

static struct folder_content *_folder_ctn(struct folder_content content)
{
    struct folder_content *c = malloc(sizeof(struct folder_content));

    memset(c, 0, sizeof(struct folder_content));
    *c = content;
    return c;
}

static struct files *_files_builder(struct file file, ...)
{
    struct files *files = malloc(sizeof(struct files));
    struct files *tmp = files;
    va_list args;

    memset(files, 0, sizeof(struct files));
    files->file = _file(file);
    va_start(args, file);
    while (1) {
        struct file f = va_arg(args, struct file);

        if (f.name == NULL)
            break;
        tmp->next = _files((struct files) {
            .file = _file(f),
            .next = NULL
        });
        tmp = tmp->next;
    }
    return files;
}

static struct files get_default_file_arch()
{
    return (struct files) {
        .file = _file((struct file) {
            .name = strdup("/"),
            .flags = FOLDER_FLAG,
            .content = _folder_ctn((struct folder_content) {
                .files = _files_builder(
                    bin_folder(),
                    img_folder(),
                    null_folder()
                )
            })
        }),
        .next = NULL
    };
}

static struct file_system create_fs_data()
{
    return (struct file_system) {
        .files = _files(get_default_file_arch()),
        .path = strdup("/"),
        .current_file = NULL
    };
}

static void setup_parents(struct file *file)
{
    struct folder_content *content = file->content;

    if (!content)
        return;
    for (struct files *files = content->files; files; files = files->next) {
        files->file->parent = file;
        setup_parents(files->file);
    }
}

int init_fs()
{
    FS = create_fs_data();
    FS.current_file = FS.files->file;   
    setup_parents(FS.files->file);
    return 1;
}