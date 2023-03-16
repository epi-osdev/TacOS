#ifndef __TOS_DRIVERS_DISK_DATAS_H__
    #define __TOS_DRIVERS_DISK_DATAS_H__

    #include "types.h"

    // ATA registers
    #define ATA_DATA_REG        0x1F0   // Data register
    #define ATA_SECTOR_COUNT    0x1F2   // Sector count register
    #define ATA_LBA_LOW         0x1F3   // LBA low register
    #define ATA_LBA_MID         0x1F4   // LBA mid register
    #define ATA_LBA_HIGH        0x1F5   // LBA high register
    #define ATA_DRIVE_SELECT    0x1F6   // Drive select register
    #define ATA_COMMAND_REG     0x1F7   // Command register
    #define ATA_STATUS_REG      0x1F7   // Status register

    // ATA commands
    #define ATA_CMD_READ_SECTORS    0x20    // Read sectors command

    // Sector size in bytes
    #define ATA_SECTOR_SIZE         512

#endif