#ifndef __EOS_DRIVERS_IDT_HANDLER_H__
    #define __EOS_DRIVERS_IDT_HANDLER_H__

    #include "drivers/idt/datas.h"

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
 * @brief set the callback of an interrupt
 * @param index the interrupt number
 * @param call the callback
*/
void set_callback(uint8_t index, handler_t call);

#endif
