[bits 32]

%define REBASE_ADDRESS(x)  (0x7c00 + ((x) - BIOS32_START))

section .text
    global BIOS32_START                             ; start memory address
    global BIOS32_END                               ; end memory address

    global bios32_gdt_ptr                           ; GDT pointer
    global gdt_entries_32                           ; GDT array entries
    global bios32_idt_ptr                           ; IDT pointer
    global bios32_in_reg16_ptr                      ; IN REGISTERS16 
    global bios32_out_reg16_ptr                     ; OUT REGISTERS16
    global bios32_int_number_ptr                    ; bios interrupt number to be called

BIOS32_START:                                       ; 32 bit protected mode
    pusha
    mov edx, esp                                    ; save current esp to edx
    cli                                             ; disable interrupts
    xor ecx, ecx                                    ; clear cr3 by saving cr3 data in ebx register
    mov ebx, cr3
    mov cr3, ecx
    lgdt [REBASE_ADDRESS(bios32_gdt_ptr)]           ; load new empty GDT
    lidt [REBASE_ADDRESS(bios32_idt_ptr)]           ; load new empty IDT
    jmp 0x30:REBASE_ADDRESS(__protected_mode_16)    ; jump to 16 bit protected mode

[bits 16]
__protected_mode_16:                                ; 16 bit protected mode
    mov ax, 0x38
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    mov eax, cr0                                    ; turn off protected mode set bit 0 to 0
    and al,  ~0x01
    mov cr0, eax
    jmp 0x0:REBASE_ADDRESS(__real_mode_16)

; 16 bit real mode
__real_mode_16:
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    mov sp, 0x8c00
    ; enable bios interrupts to call
    sti
    ; save current context, all general, segment registers, flags
    pusha
    mov cx, ss
    push cx
    mov cx, gs
    push cx
    mov cx, fs
    push cx
    mov cx, es
    push cx
    mov cx, ds
    push cx
    pushf
    ; get current stack pointer & save it to current_esp
    mov ax, sp
    mov edi, current_esp
    stosw
    ; load our custom registers context
    mov esp, REBASE_ADDRESS(bios32_in_reg16_ptr)
    ; only use some general register from the given context
    popa
    ; set a new stack for bios interrupt
    mov sp, 0x9c00
    ; call immediate interrupt opcode to execute context
    db 0xCD

bios32_int_number_ptr: ; will be bios interrupt number passed
    ; put the actual interrupt number here
    db 0x00
    ; get our output context here
    mov esp, REBASE_ADDRESS(bios32_out_reg16_ptr)
    add sp, 28 ; restore stack used for calling our context
    ; save current context, all general, segment registers, flags
    pushf
    mov cx, ss
    push cx
    mov cx, gs
    push cx
    mov cx, fs
    push cx
    mov cx, es
    push cx
    mov cx, ds
    push cx
    pusha
    ; restore the current_esp to continue
    mov esi, current_esp
    lodsw
    mov sp, ax
    ; restore all current context, all general, segment registers, flags
    popf
    pop cx
    mov ds, cx
    pop cx
    mov es, cx
    pop cx
    mov fs, cx
    pop cx
    mov gs, cx
    pop cx
    mov ss, cx
    popa

    ; jumping to 32 bit protected mode
    ; set bit 0 in cr0 to 1
    mov eax, cr0
    inc eax
    mov cr0, eax
    jmp 0x08:REBASE_ADDRESS(__protected_mode_32)

; 32 bit protected mode
__protected_mode_32:use32
    mov ax, 0x10
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    ; restore cr3
    mov cr3, ebx
    ; restore esp
    mov esp, edx
    sti
    popa
    ret


__padding:
    db 0x0
    db 0x0
    db 0x0
gdt_entries_32:
    ; 8 gdt entries
    resb 64
bios32_gdt_ptr:
    dd 0x00000000
    dd 0x00000000
bios32_idt_ptr:
    dd 0x00000000
    dd 0x00000000
bios32_in_reg16_ptr:
    resw 14
bios32_out_reg16_ptr:
    dd 0xaaaaaaaa
    dd 0xaaaaaaaa
    dd 0xaaaaaaaa
    dd 0xaaaaaaaa
    dd 0xaaaaaaaa
    dd 0xaaaaaaaa
    dd 0xaaaaaaaa
current_esp:
    dw 0x0000

BIOS32_END:
