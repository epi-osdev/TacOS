#include "drivers/fs/datas.h"
#include "drivers/fs/read.h"
#include "drivers/fs/folder.h"
#include "drivers/fs/file.h"
#include "drivers/disk.h"
#include "string.h"
#include "memory.h"
#include "VGA.h"

struct lba_data {
    char *name;
    uint32_t lba;
    uint32_t size;
    struct lba_data *next;
};

static void fill_lba_datas(struct lba_data *lba_datas, char *line)
{
    char **data = split(line, ":");
    static int y = 20;

    if (!data[0] || !data[1] || !data[2])
        return;
    *lba_datas = (struct lba_data) {
        .name = strdup(data[0]),
        .lba = atoi(data[1]),
        .size = atoi(data[2]),
        .next = NULL
    };
    // vga_printf_at("%s %d %d", VGA_YELLOW, 20, y++, lba_datas->name, lba_datas->lba, lba_datas->size);
}

static struct lba_data *get_lba_datas(const char *lba_file_storage)
{
    struct file *file = get_file_from_path(lba_file_storage);
    uint8_t *buffer = read_file(file);
    char **lines = split((char *)buffer, "\n");
    // vga_printf_at("%s %s %s", VGA_BROWN, 20, 20, lines[0], lines[1], lines[2]);
    struct lba_data *lba_datas = malloc(sizeof(struct lba_data));
    int count = 0;

    memset(lba_datas, 0, sizeof(struct lba_data));
    struct lba_data *tmp = lba_datas;
    for (size_t i = 0; lines[i]; i++) {
        fill_lba_datas(tmp, lines[i]);
        tmp->next = malloc(sizeof(struct lba_data));
        memset(tmp->next, 0, sizeof(struct lba_data));
        // vga_printf_at("%s %d %d", VGA_PURPLE, 20, 5 + i, lines[i], tmp->lba, tmp->size);
        tmp = tmp->next;
        count++;
    }
    // free(lines);
    // vga_printf_at("%d", VGA_CYAN, 20, 20, count);
    tmp->next = NULL;
    return lba_datas;
}

void update_lba()
{
    struct files *files = FS.files;
    struct lba_data *lba_datas = get_lba_datas("/fs/index");
    static int i = 0;

    for (struct lba_data *tmp = lba_datas; tmp->next; tmp = tmp->next) {
        char *new_name = malloc(strlen(tmp->name) + 2);

        memset(new_name, 0, strlen(tmp->name) + 2);
        new_name[0] = '/';
        strcat(new_name, tmp->name);

        // panic(new_name);
        struct file *file = get_file_from_path(new_name);
        // vga_printf_at("-> %s %d %d", VGA_GREEN, 20, 10 + i, tmp->name, tmp->lba, tmp->size);
        // vga_printf_at("%s %s %s %d %d", VGA_BLUE, 30, i++, new_name, file->name, tmp->name, tmp->lba, tmp->size);

        if (!file) {
            // vga_printf_at("%s %s", VGA_RED, 30, i++, new_name, tmp->name);
            panic("update_lba: File not found");
        }
        if (is_folder(file)) {
            panic("update_lba: Folder not supported");
        }

        struct file_content *content = (struct file_content *)file->content;

        content->lba = tmp->lba;
        content->size = tmp->size;
        // vga_printf_at("%s %d %d", VGA_GREEN, 30, i++, new_name, content->lba, content->size);
    }
}