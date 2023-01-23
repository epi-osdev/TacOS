#include "string/is_in.h"

int is_in(char c, const char *str)
{
    for (int i = 0; str[i]; i++) {
        if (str[i] == c) {
            return 1;
        }
    }
    return 0;
}