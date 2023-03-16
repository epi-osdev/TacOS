#ifndef __TOS_DRIVERS_DISK_READ_H__
    #define __TOS_DRIVERS_DISK_READ_H__

    #include "types.h"

int read(uint8_t *buffer, uint32_t logical_block_address, uint32_t nb_sector);

#endif