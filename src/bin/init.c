#include "ls/init.h"
#include "cd/init.h"
#include "pwd/init.h"
#include "cat/init.h"

void init_bin()
{
    init_ls();
    init_cd();
    init_pwd();
    init_cat();
}
