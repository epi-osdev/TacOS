#ifndef __GDT_H__
    #define __GDT_H__

    #include "types.h"

    #define NO_GDT_DESCRIPTORS     8

typedef struct base_s {
    uint16_t low;
    uint8_t middle, high;
} base_t;

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

/**
 * Provided in the load_gdt.asm file
 * @brief This functions loads the gdt set in the gdt.c file
 * @param gdt_ptr: The address of the gdt descriptor
 *
*/
extern void load_gdt(uint32_t gdt_ptr);

/**
 * @brief This function sets a gdt entry in the gdt array
 * @param index: The index of the gdt entry 0 <= index < NO_GDT_DESCRIPTORS
 * @param base: The base address of the gdt entry
 * @param limit: The limit of the gdt entry
 * @param access: The access byte of the gdt entry
 * @param gran: The granularity byte of the gdt entry
*/
void gdt_set_entry(int index, base_t base, uint32_t limit, uint8_t access, uint8_t gran);

/**
 * @brief This function init the GDT and all the gdt entries
 * and load the GDT with the load_gdt function
*/
void gdt_init();

/**
 * @brief This function returns a pointer to the gdt_descriptor
 * @return gdt_descriptor_t *: The address of the gdt_descriptor
*/
gdt_descriptor_t *get_gdt_descriptor();

/**
 * @brief This function returns a pointer to the gdt array
 * @return gdt_entry_t *: The address of the gdt array
*/
gdt_entry_t *get_gdt();

#endif
