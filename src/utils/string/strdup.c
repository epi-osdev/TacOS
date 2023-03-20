#include "memory.h"
#include "string/strlen.h"

char *strdup(const char *str)
{
    size_t len = strlen(str);
    char *new = malloc(len + 1);

    memset(new, 0, len + 1);
    memcpy(new, str, len);
    return new;
}