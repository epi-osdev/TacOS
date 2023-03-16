#include "string.h"
#include "drivers/fs/datas.h"
#include "drivers/fs/folder.h"

static int is_back(const char *path)
{
    return strcmp(path, "..") == 0;
}

int change_dir(const char *path)
{
    const char **paths = split(path, '/');
    struct file *current_file = FS.current_file;

    for (int i = 0; paths[i]; i++) {
        if (is_back(paths[i])) {
            if (current_file->parent)
                current_file = current_file->parent;
            continue;
        }

        struct folder_content *content = current_file->content;
        struct file *file = get_file(content->files, paths[i]);
        if (!file)
            return 0;
        current_file = file;
    }
    FS.current_file = current_file;
    FS.path = strdup(path);
    return 1;
}