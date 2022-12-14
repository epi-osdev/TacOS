#include "strlen.h"
#include "strcmp.h"

size_t strcmp(char const *s1, char const *s2)
{
    if (s1 == NULL || s2 == NULL)
        return 84;
    int i = 0;
    do {
        if (s1[i] > s2[i] || s2[i] == '\0' && s1[i] != '\0')
            return 1;
        if (s1[i] < s2[i] || s1[i] == '\0' && s2[i] != '\0')
            return -1;
        i++;
    } while (s1[i] != '\0' || s2[i] != '\0');
    return 0;
}
