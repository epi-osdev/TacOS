#include "string/strndup.h"
#include "types.h"
#include "memory.h"

char *strndup(const char *str, size_t n)
{
    const size_t alloc_size = sizeof(char) * (n + 1);
    char *res = malloc(alloc_size);
    memset(res, 0, alloc_size);

    for (size_t i = 0; i < n && str[i]; i++) {
        res[i] = str[i];
    }
    return (res);
}