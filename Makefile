CC				= i686-elf-gcc
NASM			= nasm
LD				= i686-elf-ld
QEMU 			= qemu-system-x86_64
GRUB			= /usr/bin/grub-mkrescue
BOCHS			= bochs

SRC				= ./src
ISO				= ./iso
UTILS			= $(SRC)/utils
DRIVERS			= $(SRC)/drivers
BIN				= $(SRC)/bin
BIOS			= $(DRIVERS)/bios
GDT				= $(DRIVERS)/gdt
IDT				= $(DRIVERS)/idt
GUI				= $(DRIVERS)/vesa
VESA_CLI		= $(DRIVERS)/vesa_cli
KEYBOARD		= $(DRIVERS)/keyboard
PIC				= $(DRIVERS)/pic
FS				= $(DRIVERS)/fs
DISK			= $(DRIVERS)/disk
STRING_LIB		= $(UTILS)/string
MEMORY_LIB		= $(UTILS)/memory

INCLUDES		= -I $(SRC) -I $(UTILS)
C_FLAGS 		= -W -Wall -Wextra -ffreestanding  $(INCLUDES)
LD_FLAGS 		= -T config/linker.ld -nostdlib -m elf_i386
ASM_FLAGS 		= -f elf32
QEMU_FLAGS		= -d int -no-reboot
BOCHS_FLAGS		= -f bochsrc -q

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
				$(FS)/init.c \
				$(FS)/file.c \
				$(FS)/files.c \
				$(FS)/folder.c \
				$(BIN)/init.c \
				$(BIN)/ls/init.c \
				$(DISK)/read.c \
				$(DISK)/write.c \
				$(STRING_LIB)/itoa.c \
				$(STRING_LIB)/revstr.c \
				$(STRING_LIB)/strlen.c \
				$(STRING_LIB)/split.c \
				$(STRING_LIB)/is_in.c \
				$(STRING_LIB)/strndup.c \
				$(STRING_LIB)/strcmp.c \
				$(STRING_LIB)/strcat.c \
				$(STRING_LIB)/strdup.c \
				$(MEMORY_LIB)/memcpy.c \
				$(MEMORY_LIB)/memset.c \
				$(MEMORY_LIB)/malloc.c

ASM_SRC			= $(BIOS)/32/interrupts.asm \
				$(SRC)/boot_sector.asm \
				$(GDT)/load_gdt.asm \
				$(IDT)/interrupts.asm \
				$(GUI)/font/TacOS_font.asm

OBJ 			= $(C_SRC:.c=.o) $(ASM_SRC:.asm=.o)
TARGET_BIN		= $(ISO)/TacOS.bin
TARGET_ISO		= $(TARGET_BIN:.bin=.iso)

all: build

build: $(OBJ)
	$(LD) $(LD_FLAGS) -o $(TARGET_BIN) $(OBJ)
	$(GRUB) -o $(TARGET_ISO) .
	cat test.txt >> $(TARGET_ISO)

run:
	$(QEMU) $(QEMU_FLAGS) $(TARGET_ISO)

run_bochs:
	$(BOCHS) $(BOCHS_FLAGS)

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

