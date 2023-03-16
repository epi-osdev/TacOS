#include "drivers/fs/datas.h"
#include "memory.h"

static struct files *create_file_node()
{
    struct files *node = malloc(sizeof(struct files));
    
    memset(node, 0, sizeof(struct files));
    node->next = NULL;
    return node;
}

struct files *add_file(struct files *files, struct file *file)
{
    struct files *tmp = files;

    if (!file)
        return tmp;
    if (!tmp) {
        tmp = create_file_node();
        tmp->file = file;
        return tmp;
    }
    for (; tmp->next; tmp = tmp->next);
    tmp->next = create_file_node();
    tmp->next->file = file;
    return tmp->next;
}

struct files *get_files()
{
    return FS.files;
}

struct file *get_current_folder()
{
    return FS.current_file;
}