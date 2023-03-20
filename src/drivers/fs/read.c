#include "drivers/disk.h"
#include "drivers/vesa.h"
#include "drivers/fs/datas.h"
#include "drivers/fs/folder.h"
#include "string.h"
#include "memory.h"

static size_t calc_file_size(struct file_content *content)
{
    size_t size = 0;
    struct file_content *tmp = content;

    for (; tmp; tmp = tmp->next)
        size += tmp->size * SECTOR_SIZE;
    return size;
}

static uint8_t *read_file_content(struct file_content *content)
{
    size_t file_size = calc_file_size(content) + 1;
    uint8_t *buffer = malloc(sizeof(uint8_t) * file_size);

    memset(buffer, 0, file_size);
    for (struct file_content *tmp = content; tmp; tmp = tmp->next) {
        uint8_t *tmp_buffer = malloc(sizeof(uint8_t) * tmp->size * SECTOR_SIZE);

        memset(tmp_buffer, 0, tmp->size * SECTOR_SIZE);
        read_disk(tmp_buffer, tmp->lba, tmp->size);
        strcat((char *)buffer, (const char *)tmp_buffer);
    }
    return buffer;
}

uint8_t *read_file(const char *path)
{
    struct folder_content *content = (struct folder_content *)FS.current_file->content;
    struct file *file = get_file(content->files, path);

    if (!file)
        return NULL;
    if (is_folder(file))
        return NULL;
    return read_file_content((struct file_content * )file->content);
}