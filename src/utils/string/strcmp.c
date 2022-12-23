#include "strcmp.h"

int strcmp(char const * s1, char const * s2)
{
    if (s1 == NULL || s2 == NULL)
        return (s1 == s2) ? 0 : ((s1 == NULL) ? -1 : 1);
    while (*s1 && *s2) {
        if (*s1 > *s2)
            return *s1 - *s2;
        if (*s1 < *s2)
            return *s1 - *s2;
        s1++;
        s2++;
    }
    if (*s1 > *s2)
        return *s1 - *s2;
    if (*s1 < *s2)
        return *s1 - *s2;
    else
        return 0;
}
