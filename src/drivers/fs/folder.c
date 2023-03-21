#include "drivers/fs/file.h"
#include "drivers/fs/folder.h"
#include "drivers/vesa.h"
#include "memory.h"
#include "VGA.h"
#include "string.h"

struct file *create_empty_folder()
{
    struct file *folder = malloc(sizeof(struct file));

    memset(folder, 0, sizeof(struct file));
    return folder;
}

uint8_t default_folder_flags()
{
    return FOLDER_FLAG;
}

static void set_folder_name(struct file *folder, const char *name)
{
    memset(folder->name, 0, MAX_FILE_NAME_SIZE);
    strcat(folder->name, name);
}

static void set_folder_flag(struct file *folder, uint8_t flags)
{
    set_file_flags(folder, flags);
}

struct file *create_folder_wname(const char *name)
{
    struct file *folder = create_empty_folder();

    set_folder_name(folder, name);
    set_folder_name(folder, name);
    set_folder_flag(folder, default_folder_flags());
    return folder;
}

int is_folder(struct file *file)
{
    return file->flags & FOLDER_FLAG;
}

struct file *get_file(struct files *files, const char *name)
{
    for (struct files *tmp = files; tmp; tmp = tmp->next) {
        if (!strcmp(tmp->file->name, name))
            return tmp->file;
    }
    return NULL;
}

struct file *get_file_from_lpath(const char *path)
{
    struct folder_content *content = (struct folder_content *)FS.current_file->content;
    struct file *file = get_file(content->files, path);

    return file;
}

struct file *get_file_from_gpath(const char *path)
{
    char **paths = split(path, "/");
    struct file *root_folder = FS.files->file;
    struct folder_content *root_folder_content = (struct folder_content *)root_folder->content;
    struct file *current_file = root_folder;
    static int y = 0;

    for (size_t i = 0; paths[i]; i++) {
        int found = 0;
        for (struct files *tmp = root_folder_content->files; tmp; tmp = tmp->next) {
            // vga_printf_at("%s %s", VGA_BLUE, 0, y++, tmp->file->name, paths[i]);
            if (!strcmp(tmp->file->name, paths[i])) {
                current_file = tmp->file;
                found = 1;
                // vga_printf_at("found %s %s", VGA_GREEN, 0, y++, tmp->file->name, paths[i]);
                break;
            }
        }
        if (!found)
            return NULL;
        if (!is_folder(current_file) && paths[i + 1])
            return NULL;
        root_folder_content = (struct folder_content *)current_file->content;
    }
    return current_file;
}

struct file *get_file_from_path(const char *path)
{
    if (!path)
        return NULL;
    if (path[0] == '/')
        return get_file_from_gpath(path + 1);
    return get_file_from_lpath(path);
}