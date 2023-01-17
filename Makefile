CC				= i686-elf-gcc
NASM			= nasm
LD				= i686-elf-ld
QEMU 			= qemu-system-x86_64
GRUB			= /usr/bin/grub-mkrescue

SRC				= ./src
ISO				= ./iso
UTILS			= $(SRC)/utils
DRIVERS			= $(SRC)/drivers
BIOS			= $(DRIVERS)/bios
GDT				= $(DRIVERS)/gdt
IDT				= $(DRIVERS)/idt
GUI				= $(DRIVERS)/vesa
KEYBOARD		= $(DRIVERS)/keyboard
PIC				= $(DRIVERS)/pic

INCLUDES		= -I $(SRC) -I $(UTILS)
C_FLAGS 		= -W -Wall -Wextra -ffreestanding -std=c99 $(INCLUDES)
LD_FLAGS 		= -T config/linker.ld -nostdlib -m elf_i386
ASM_FLAGS 		= -f elf32
QEMU_FLAGS		= -d int -no-reboot

C_SRC			= src/kernel.c \
				$(GDT)/gdt.c \
				$(BIOS)/32/bios32.c \
				$(UTILS)/string/itoa.c \
				$(UTILS)/string/strlen.c \
				$(UTILS)/string/revstr.c \
				$(UTILS)/memory/memset.c \
				$(UTILS)/memory/memcpy.c \
				$(UTILS)/VGA/clear.c \
				$(UTILS)/VGA/print.c \
				$(IDT)/handler.c \
				$(IDT)/idt.c \
				$(IDT)/init.c \
				$(PIC)/io.c \
				$(PIC)/remap.c \
				$(KEYBOARD)/init.c \
				$(KEYBOARD)/handler.c \
				$(GUI)/draw_square.c \
				$(GUI)/init.c \
				$(GUI)/put_pixel.c

ASM_SRC			= $(BIOS)/32/interrupts.asm \
				$(SRC)/boot_sector.asm \
				$(GDT)/load_gdt.asm \
				$(IDT)/interrupts.asm

OBJ 			= $(C_SRC:.c=.o) $(ASM_SRC:.asm=.o)
TARGET_BIN		= $(ISO)/TacOS.bin
TARGET_ISO		= $(TARGET_BIN:.bin=.iso)

all: build

build: $(OBJ)
	$(LD) $(LD_FLAGS) -o $(TARGET_BIN) $(OBJ)
	$(GRUB) -o $(TARGET_ISO) .

run:
	$(QEMU) $(QEMU_FLAGS) $(TARGET_ISO)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(TARGET_BIN)
	$(RM) $(TARGET_ISO)

re: fclean all

%.o: %.c
	$(CC) -c $(C_FLAGS) -o $@ $<

%.o: %.asm
	$(NASM) $(ASM_FLAGS) -o $@ $<

