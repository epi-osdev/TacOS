#include "strlen.h"
#include "strcmp.h"

int strcmp(char *s1, char *s2)
{
    int len_s1 = strlen(s1);
    for (int i = 0; i < len_s1; i++) {
        if (s1[1] > s2[i])
            return 1;
        if (s1[1] < s2[i])
            return -1;
    }
    return 0;
}
