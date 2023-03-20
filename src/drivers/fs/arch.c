#include "drivers/fs/datas.h"
#include "string.h"
#include "memory.h"
#include <stdarg.h>

struct files *_files(struct files files) {
    struct files *tmp = malloc(sizeof(struct files));

    memset(tmp, 0, sizeof(struct files));
    *tmp = files;
    return tmp;
}

struct file *_file(struct file file)
{
    struct file *f = malloc(sizeof(struct file));

    memset(f, 0, sizeof(struct file));
    *f = file;
    return f;
}

struct folder_content *_folder_ctn(struct folder_content content)
{
    struct folder_content *c = malloc(sizeof(struct folder_content));

    memset(c, 0, sizeof(struct folder_content));
    *c = content;
    return c;
}

struct files *_files_builder(struct file file, ...)
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

struct file_content *_file_ctn(struct file_content content)
{
    struct file_content *c = malloc(sizeof(struct file_content));

    memset(c, 0, sizeof(struct file_content));
    *c = content;
    return c;
}

struct file bin_folder()
{
    return (struct file) {
        .name = strdup("bin"),
        .flags = FOLDER_FLAG,
        .content = NULL,
        .parent = NULL
    };
}

struct file img_folder()
{
    return (struct file) {
        .name = strdup("img"),
        .flags = FOLDER_FLAG,
        .content = NULL,
        .parent = NULL
    };
}

struct file null_folder()
{
    return (struct file) {
        .name = NULL,
        .flags = 0,
        .content = NULL,
        .parent = NULL
    };
}

struct file test_folder()
{
    return (struct file) {
        .name = strdup("test"),
        .flags = FOLDER_FLAG,
        .content = (union content_unit *)_folder_ctn((struct folder_content) {
            .files = _files_builder(
                (struct file) {
                    .name = strdup("test1"),
                    .flags = FILE_FLAG,
                    .content = (union content_unit *)_file_ctn((struct file_content) {
                        .lba = 24532,
                        .size = 2,
                        .next = NULL
                    }),
                    .parent = NULL
                },
                null_folder()
            )
        }),
        .parent = NULL
    };
}
