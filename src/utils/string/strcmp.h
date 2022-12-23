#ifndef __EOS_UTILS_STRING_STRCMP_H__
    #define __EOS_UTILS_STRING_STRCMP_H__

#include "types.h"

/**
* @brief: a function compares the two strings
* @param s1: the string that will be compared
* @param s2: the string that compares
* @return 2: If a character in s1 is less than the character at the same index in s2
* @return 0: If s1 and s2 are equal
* @return 1: If a character in s1 is greater than the character at the same index in s2
*/

int strcmp(char * s1, char * s2);
#endif
