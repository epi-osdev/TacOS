#include "memory.h"
#include "string/strlen.h"

char *strdup(const char *str)
{
    size_t len = strlen(str);
    char *new = malloc(len + 1);

    memcpy(new, str, len);
    new[len] = '\0';
    return new;
}