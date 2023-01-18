#include "strlen.h"

size_t strlen(const char *str)
{
    size_t size;
    for (size = 0; str[size] != '\0'; size++);
    return size;
}
