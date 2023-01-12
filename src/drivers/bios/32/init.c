#include "drivers/bios/32/init.h"
#include "drivers/bios/32/interrupts.h"

BIOS32_t init_bios32_struct()
{
    return (BIOS32_t) {
        .intcall = _int32call
    };
}
