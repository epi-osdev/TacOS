#include "drivers/vesa/init.h"
#include "drivers/bios.h"
#include "drivers/gdt.h"

void init_vesa()
{
    gdt32_init();
    
}
