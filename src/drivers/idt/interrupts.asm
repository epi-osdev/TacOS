[bits 32]
[extern isr_handler]
[extern irq_handler]


isr_common_stub:
    pusha

    xor eax, eax
    mov ax, ds
    push eax                ; save the data segment descriptor
    
    mov ax, 0x10            ; kernel data segment descriptor
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    
    push esp ; push esp --> C function parameter
    call isr_handler
    add esp, 4

    pop eax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    popa
    add esp, 8              ; Cleans up the pushed error code and pushed ISR number
    sti
    iret

irq_common_stub:
    pusha

    xor eax, eax
    mov ax, ds
    push eax

    mov ax, 0x10
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    push esp
    call irq_handler
    add esp, 4

    pop eax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    popa
    add esp, 8
    sti
    iret

%macro ISR 1
    global isr%1

    isr%1:
      cli
      push 0
      push %1
      jmp isr_common_stub
%endmacro

%macro ISR_ERROR 1
    global isr%1

    isr%1:
      cli
      push %1
      jmp isr_common_stub
%endmacro

%macro IRQ 2
    global irq%1

    irq%1:
      cli
      push %1; dummy error
      push %2 ; interrupt number
      jmp irq_common_stub
%endmacro

; 0: Divide By Zero Exception
ISR 0
; 1: Debug Exception
ISR 1
; 2: Non Maskable Interrupt Exception
ISR 2
; 3: Int 3 Exception
ISR 3
; 4: INTO Exception
ISR 4
; 5: Out of Bounds Exception
ISR 5
; 6: Invalid Opcode Exception
ISR 6
; 7: Coprocessor Not Available Exception
ISR 7
; 8: Double Fault Exception (With Error Code!)
ISR_ERROR 8
;9: Coprocessor Segment Overrun Exception
ISR 9 
; 10: Bad TSS Exception (With Error Code!)
ISR_ERROR 10
;11: Segment Not Present Exception (With Error Code!)
ISR_ERROR 11
;12: Stack Fault Exception (With Error Code!)
ISR_ERROR 12
;13: General Protection Fault Exception (With Error Code!)
ISR_ERROR 13
;14: Page Fault Exception (With Error Code!)
ISR_ERROR 14
;15: Reserved Exception
ISR 15
; 16: Floating Point Exception
ISR 16
; 17: Alignment Check Exception
ISR_ERROR 17
; 18: Machine Check Exception
ISR 18

; Reserved or unused
ISR 19
ISR 20
ISR_ERROR 21
ISR 22
ISR 23
ISR 24
ISR 25
ISR 26
ISR 27
ISR 28
ISR 29
ISR 30
ISR 31
ISR 32
ISR 33
ISR 34
ISR 35
ISR 36
ISR 37
ISR 38
ISR 39
ISR 40
ISR 41
ISR 42
ISR 43
ISR 44
ISR 45
ISR 46
ISR 47
ISR 48
ISR 49
ISR 50
ISR 51
ISR 52
ISR 53
ISR 54
ISR 55
ISR 56
ISR 57
ISR 58
ISR 59
ISR 60
ISR 61
ISR 62
ISR 63
ISR 64
ISR 65
ISR 66
ISR 67
ISR 68
ISR 69
ISR 70
ISR 71
ISR 72
ISR 73
ISR 74
ISR 75
ISR 76
ISR 77
ISR 78
ISR 79
ISR 80
ISR 81
ISR 82
ISR 83
ISR 84
ISR 85
ISR 86
ISR 87
ISR 88
ISR 89
ISR 90
ISR 91
ISR 92
ISR 93
ISR 94
ISR 95
ISR 96
ISR 97
ISR 98
ISR 99
ISR 100
ISR 101
ISR 102
ISR 103
ISR 104
ISR 105
ISR 106
ISR 107
ISR 108
ISR 109
ISR 110
ISR 111
ISR 112
ISR 113
ISR 114
ISR 115
ISR 116
ISR 117
ISR 118
ISR 119
ISR 120
ISR 121
ISR 122
ISR 123
ISR 124
ISR 125
ISR 126
ISR 127
ISR 128
ISR 129
ISR 130
ISR 131
ISR 132
ISR 133
ISR 134
ISR 135
ISR 136
ISR 137
ISR 138
ISR 139
ISR 140
ISR 141
ISR 142
ISR 143
ISR 144
ISR 145
ISR 146
ISR 147
ISR 148
ISR 149
ISR 150
ISR 151
ISR 152
ISR 153
ISR 154
ISR 155
ISR 156
ISR 157
ISR 158
ISR 159
ISR 160
ISR 161
ISR 162
ISR 163
ISR 164
ISR 165
ISR 166
ISR 167
ISR 168
ISR 169
ISR 170
ISR 171
ISR 172
ISR 173
ISR 174
ISR 175
ISR 176
ISR 177
ISR 178
ISR 179
ISR 180
ISR 181
ISR 182
ISR 183
ISR 184
ISR 185
ISR 186
ISR 187
ISR 188
ISR 189
ISR 190
ISR 191
ISR 192
ISR 193
ISR 194
ISR 195
ISR 196
ISR 197
ISR 198
ISR 199
ISR 200
ISR 201
ISR 202
ISR 203
ISR 204
ISR 205
ISR 206
ISR 207
ISR 208
ISR 209
ISR 210
ISR 211
ISR 212
ISR 213
ISR 214
ISR 215
ISR 216
ISR 217
ISR 218
ISR 219
ISR 220
ISR 221
ISR 222
ISR 223
ISR 224
ISR 225
ISR 226
ISR 227
ISR 228
ISR 229
ISR 230
ISR 231
ISR 232
ISR 233
ISR 234
ISR 235
ISR 236
ISR 237
ISR 238
ISR 239
ISR 240
ISR 241
ISR 242
ISR 243
ISR 244
ISR 245
ISR 246
ISR 247
ISR 248
ISR 249
ISR 250
ISR 251
ISR 252
ISR 253
ISR 254
ISR 255

; IRQ handlers

IRQ 0, 32
IRQ 1, 33
IRQ 2, 34
IRQ 3, 35
IRQ 4, 36
IRQ 5, 37
IRQ 6, 38
IRQ 7, 39
IRQ 8, 40
IRQ 9, 41
IRQ 10, 42
IRQ 11, 43
IRQ 12, 44
IRQ 13, 45
IRQ 14, 46
IRQ 15, 47
