#include "types.h"

void strcat(char *dest, const char *src)
{
    size_t i = 0;

    for (; dest[i]; i++);
    i++;
    for (size_t j = 0; src[j]; j++, i++) {
        dest[i] = src[j];
    }
}