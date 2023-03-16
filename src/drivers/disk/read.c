#include "drivers/disk/read.h"
#include "drivers/disk/datas.h"
#include "drivers/pic.h"

static inline void insl(int port, void *addr, int cnt)
{
    asm volatile("cld; rep insl"
                 : "=D"(addr), "=c"(cnt)
                 : "d"(port), "0"(addr), "1"(cnt)
                 : "memory", "cc");
}

int read(uint8_t *buffer, uint32_t lba, uint32_t sector_count)
{
    // Wait for the disk to become ready
    while ((port_byte_in(ATA_STATUS_REG) & 0xC0) != 0x40);

    // Set the sector count
    port_byte_out(ATA_SECTOR_COUNT, sector_count);

    // Set the LBA address
    port_byte_out(ATA_LBA_LOW, lba & 0xFF);
    port_byte_out(ATA_LBA_MID, (lba >> 8) & 0xFF);
    port_byte_out(ATA_LBA_HIGH, (lba >> 16) & 0xFF);

    // Select the drive and set the LBA mode
    port_byte_out(ATA_DRIVE_SELECT, 0xE0 | ((lba >> 24) & 0x0F));

    // Issue the read command
    port_byte_out(ATA_COMMAND_REG, ATA_CMD_READ_SECTORS);

    // Wait for the disk to become ready
    while ((port_byte_in(ATA_STATUS_REG) & 0xC0) != 0x40);

    // Read the sector data
    for (int i = 0; i < sector_count; i++) {
        // Wait for the disk to become ready
        while ((port_byte_in(ATA_STATUS_REG) & 0xC0) != 0x40);

        // Read the sector data
        insl(ATA_DATA_REG, buffer, ATA_SECTOR_SIZE / sizeof(uint32_t));

        buffer += ATA_SECTOR_SIZE;
    }
    return 0;
}