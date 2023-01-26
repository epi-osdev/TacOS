#include "string/strndup.h"
#include "types.h"
#include "memory.h"
#include "drivers/vesa.h"

char *strndup(const char *str, size_t n)
{
    const size_t alloc_size = sizeof(char) * (n + 1);
    char *res = malloc(alloc_size);
    memset(res, 0, alloc_size);

    for (size_t i = 0; i < n && str[i]; i++) {
        res[i] = str[i];
        GUI.print_c(str[i], i * 20, 450, 0x0000FF);
        if (str[i] == 0) {
            GUI.print_s("0", 400, 450, 0xFFFFFF);
        } else {
            GUI.print_s("1", 400, 450, 0xFFFFFF);
        }
    }
    static int i = 0;
    GUI.print_s(res, 0, 300 + i * 100, 0xFF00FF);
    i++;
    return (res);
}