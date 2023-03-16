#include "memory.h"
#include "strcat.h"
#include "strlen.h"

char *join(const char **strings, const char *sep)
{
    size_t len = 0;
    size_t sep_len = strlen(sep);
    size_t nb_strings = 0;

    for (size_t i = 0; strings[i]; i++) {
        len += strlen(strings[i]);
        nb_strings++;
    }
    len += (nb_strings - 1) * sep_len;
    char *joined = malloc(sizeof(char) * (len + 1));

    memset(joined, 0, sizeof(char) * (len + 1));
    for (size_t i = 0; strings[i]; i++) {
        strcat(joined, strings[i]);
        if (strings[i + 1])
            strcat(joined, sep);
    }
    return joined;
}
