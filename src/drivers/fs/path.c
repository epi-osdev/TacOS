#include "string.h"
#include "string/split.h"
#include "memory.h"
#include "drivers/fs/datas.h"
#include "drivers/fs/folder.h"

static int is_back(const char *path)
{
    return strcmp(path, "..") == 0;
}

static char *simplify_path(const char *path)
{
    const char **paths = (const char **)split(path, "/");
    char *new_path = malloc(sizeof(char) * (strlen(path) + 1));

    memset(new_path, 0, sizeof(char) * (strlen(path) + 1));
    if (path[0] == '/')
        strcat(new_path, "/");
    for (size_t i = 0; paths[i]; i++) {
        if (is_back(paths[i]) || is_back(paths[i + 1]))
            continue;
        strcat(new_path, paths[i]);
        if (paths[i + 1])
            strcat(new_path, "/");
    }
    return new_path;
}

static char *get_new_path(const char *path)
{
    size_t len = path[0] == '/' ? strlen(path) : strlen(FS.path) + strlen(path) + 1;
    char *new_path = malloc(sizeof(char) * (len + 1));

    memset(new_path, 0, sizeof(char) * (len + 1));
    if (path[0] == '/') {
        strcat(new_path, path);
    } else {
        strcat(new_path, FS.path);
        if (FS.path[strlen(FS.path) - 1] != '/')
            strcat(new_path, "/");
        strcat(new_path, path);
    }
    return simplify_path(new_path);
}

int change_dir(const char *path)
{
    const char **paths = (const char **)split(path, "/");
    struct file *current_file = FS.current_file;

    for (int i = 0; paths[i]; i++) {
        if (is_back(paths[i])) {
            if (current_file->parent)
                current_file = current_file->parent;
            continue;
        }

        struct folder_content *content = (struct folder_content *)current_file->content;
        struct file *file = get_file(content->files, paths[i]);
        if (!file)
            return 0;
        current_file = file;
    }
    FS.current_file = current_file;
    FS.path = get_new_path(path);
    return 1;
}
