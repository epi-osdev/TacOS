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
VESA_CLI		= $(DRIVERS)/vesa_cli
KEYBOARD		= $(DRIVERS)/keyboard
PIC				= $(DRIVERS)/pic
HEAP			= $(DRIVERS)/heap
STRING_LIB		= $(UTILS)/string/libstring.a
MEMORY_LIB		= $(UTILS)/memory/libmemory.a

LIBS			= $(STRING_LIB)
INCLUDES		= -I $(SRC) -I $(UTILS)
C_FLAGS 		= -W -Wall -Wextra -ffreestanding -Werror $(INCLUDES)
LD_FLAGS 		= -T config/linker.ld -nostdlib -m elf_i386
ASM_FLAGS 		= -f elf32
QEMU_FLAGS		= -d int -no-reboot

C_SRC			= src/kernel.c \
				$(GDT)/gdt.c \
				$(BIOS)/32/bios32.c \
				$(UTILS)/VGA/clear.c \
				$(UTILS)/VGA/print.c \
				$(IDT)/handler.c \
				$(IDT)/idt.c \
				$(IDT)/init.c \
				$(PIC)/io.c \
				$(PIC)/remap.c \
				$(KEYBOARD)/init.c \
				$(KEYBOARD)/handler.c \
				$(KEYBOARD)/scancode.c \
				$(GUI)/draw_square.c \
				$(GUI)/init.c \
				$(GUI)/put_pixel.c \
				$(GUI)/print.c \
				$(VESA_CLI)/init.c \
				$(VESA_CLI)/update.c \
				$(VESA_CLI)/draw.c \
				$(VESA_CLI)/clear.c \
				$(VESA_CLI)/prompt.c \
				$(VESA_CLI)/buffer.c \
				$(VESA_CLI)/commands.c \
				$(VESA_CLI)/commands/launch.c \
				$(VESA_CLI)/commands/echo.c \
				$(VESA_CLI)/commands/clear.c \
				$(UTILS)/memory/memcpy.c \
				$(UTILS)/memory/memset.c \
				$(UTILS)/memory/malloc.c \
				$(UTILS)/memory/malloc/sectors.c \
				$(HEAP)/address.c \

ASM_SRC			= $(BIOS)/32/interrupts.asm \
				$(SRC)/boot_sector.asm \
				$(GDT)/load_gdt.asm \
				$(IDT)/interrupts.asm \
				$(GUI)/font/TacOS_font.asm

OBJ 			= $(C_SRC:.c=.o) $(ASM_SRC:.asm=.o)
TARGET_BIN		= $(ISO)/TacOS.bin
TARGET_ISO		= $(TARGET_BIN:.bin=.iso)

all: deps build

deps:
	make -C $(UTILS)/string

build: $(OBJ)
	$(LD) $(LD_FLAGS) -o $(TARGET_BIN) $(OBJ) $(LIBS)
	$(GRUB) -o $(TARGET_ISO) .

run:
	$(QEMU) $(QEMU_FLAGS) $(TARGET_ISO)

clean:
	make -C $(UTILS)/string clean
	$(RM) $(OBJ)

fclean: clean
	make -C $(UTILS)/string fclean
	$(RM) $(TARGET_BIN)
	$(RM) $(TARGET_ISO)

re: fclean all

%.o: %.c
	$(CC) -c $(C_FLAGS) -o $@ $<

%.o: %.asm
	$(NASM) $(ASM_FLAGS) -o $@ $<

