#include "drivers/fs/file.h"
#include "string.h"
#include "memory.h"

static uint8_t default_file_flags()
{
    return FILE_FLAG;
}

void set_file_flags(struct file *file, uint8_t flags)
{
    file->flags = flags;
}

static struct file_content *empty_file_content()
{
    struct file_content *content = malloc(sizeof(union content_unit));

    memset(content, 0, sizeof(union content_unit));
    content->content = NULL;
    content->next = NULL;
    return content;
}

static struct file_content *default_file_content()
{
    struct file_content *content = empty_file_content();

    return content;
}

static void set_file_content(struct file *f, struct file_content *content)
{
    f->content = content;
}

struct file *create_empty_file()
{
    struct file *f = malloc(sizeof(struct file));

    memset(f, 0, sizeof(struct file));
    return f;
}

void set_file_name(struct file *f, const char *name)
{
    memset(f->name, 0, MAX_FILE_NAME_SIZE);
    strcat(f->name, name);
}

struct file *create_file_wname(const char *name)
{
    struct file *f = create_empty_file();

    set_file_name(f, name);
    set_file_content(f, default_file_content());
    set_file_flags(f, default_file_flags());
    return f;
}