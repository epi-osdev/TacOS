#ifndef __EOS_DRIVERS_IDT_HANDLER_H__
    #define __EOS_DRIVERS_IDT_HANDLER_H__

    #include "drivers/idt/datas.h"

typedef void (*handler_t)(registers_t *regs);

/**
 * @brief ISR handler, called by all the ISR, it will be used
 * by the call of the isr stub
 * @param regs All the registers passed by the stub
*/
extern void isr_handler(registers_t *regs);

/**
 * @brief IRQ handler, called by all the IRQ, it will be used
 * by the call of the isr stub
 * @param regs All the registers passed by the stub
*/
extern void irq_handler(registers_t *regs);

/**
 * @brief register an handler for an interrupt
 * @param n the interrupt number
 * @param handler the handler
*/
void register_handler(uint8_t n, handler_t handler);

/**
 * @brief set the callback of an interrupt
 * @param index the interrupt number
 * @param call the callback
*/
void set_callback(uint8_t index, handler_t call);

#endif
