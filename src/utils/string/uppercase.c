#include "islower.h"
#include "uppercase.h"

void uppercase(char *str)
{
    char *tmp = str;
    for (int i = 0; *tmp; i++) {
        if (islower(tmp[0]))
            tmp[0] -= 32;
        ++tmp;
    }
}