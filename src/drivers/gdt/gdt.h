#ifndef __TOS_DRIVERS_GDT_GDT_H__
    #define __TOS_DRIVERS_GDT_GDT_H__

    #include "types.h"

    #define NO_GDT_DESCRIPTORS      8

typedef struct gdt_entry_s {
    uint16_t segment_limit;              // segment limit first 0-15 bits
    uint16_t base_low;                   // base first 0-15 bits
    uint8_t base_middle;                 // base 16-23 bits
    uint8_t access;                      // access byte
    uint8_t granularity;                 // high 4 bits (flags) low 4 bits (limit 4 last bits)(limit is 20 bit wide)
    uint8_t base_high;                   // base 24-31 bits
} __attribute__((packed)) gdt_entry_t;

typedef struct gdt_descriptor_s {
    uint16_t limit;                      // limit size of all GDT segments
    uint32_t base_address;               // base address of the first GDT segment
} __attribute__((packed)) gdt_descriptor_t;


#endif