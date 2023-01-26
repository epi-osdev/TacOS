#include "string/split.h"
#include "string/strndup.h"
#include "string/is_in.h"
#include "string/strlen.h"
#include "memory.h"

size_t count_nb_words(const char *str, const char *sep)
{
    size_t nb_words = 0;
    int last_char_sep = 1;

    for (size_t i = 0; str[i]; i++) {
        int char_in = is_in(str[i], sep);
        if (last_char_sep && !char_in) {
            nb_words++;
            last_char_sep = 0;
        } else if (char_in) {
            last_char_sep = 1;
        }
    }
    return (nb_words);
}

char **split(const char *str, const char *sep)
{
    const size_t nb_words = count_nb_words(str, sep);
    const size_t nb_words_alloc_size = sizeof(char *) * (nb_words + 1);
    char **arr = malloc(nb_words_alloc_size);
    memset(arr, 0, nb_words_alloc_size);
    size_t buff_id = 0;
    int empty_buf = 1;
    size_t arr_id = 0;

    for (size_t i = 0; str[i]; i++) {
        int is_sep = is_in(str[i], sep);
        if (!is_sep && empty_buf) {
            empty_buf = 0;
            buff_id = i;
        } else if (is_sep && !empty_buf) {
            arr[arr_id++] = strndup(str + buff_id, i - buff_id);
            empty_buf = 1;
        }
    }
    if (!empty_buf)
        arr[arr_id++] = strndup(str + buff_id, strlen(str) - buff_id);
    arr[arr_id] = NULL;
    return (arr);
}
