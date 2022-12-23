#include "strcmp.h"

size_t my_strcmp(char const * s1, char const * s2)
{
    for (int i = 0; s1[i] != '\0' && s2[i] != '\0'; i++) {
        if (s1[i] < s2[i])
            return 2;
        if (s1[i] > s2[i])
            return 1;
    }
    if (s1[i] == '\0' && s2[i] == '\0')
        return 0;
    if (s1[i] == '\0')
        return 2;
    return 1;
}
