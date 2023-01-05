#ifndef __EOS_UTILS_STRING_STRCMP_H__
    #define __EOS_UTILS_STRING_STRCMP_H__

#include "types.h"

/**
* @brief: a function compares the two strings
* @param s1: the string that will be compared
* @param s2: the string that compares
* @return 0: If s1 and s2 are equal
* @return s1 - s2: If s1 and s2 are different
* @return -1: If s1 is NULL
* @return 1: If s2 is NULL
*/

int strcmp(char * s1, char * s2);
#endif
