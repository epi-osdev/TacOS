SRC				= ./src
CONFIG			= ./config
BIN				= ./bin
ISO				= ./boot

# Main folders path
ENTRY			= $(SRC)/entry
UTILS			= $(SRC)/utils
BOOT			= $(SRC)/boot_sector
INTERRUPTS		= $(SRC)/interrupts
DRIVERS			= $(SRC)/drivers

# Kernel needed file(s)
KERNEL_BIN		= $(BIN)/kernel.bin
KERNEL_BUILD	= $(BIN)/kernelfull.o
OS_BIN			= $(ISO)/epi-os.bin
OS_ISO			= $(ISO)/epi-os.iso

# Compilation tools (compiler, linker, etc..)
NASM			= nasm
CC				= i686-elf-gcc
LD				= i686-elf-ld
GRUB			= /usr/bin/grub-mkrescue

# Boot sector
BOOT_SRC		= $(BOOT)/boot_sector.asm
BOOT_BIN		= $(BIN)/boot.bin
BOOT_FLAGS		= -f bin

# Includes
INCLUDES		= -I $(SRC) -I $(UTILS)

# Flags
ASM_FLAGS		= -f elf32
CFLAGS			= $(INCLUDES) -W -Wall -Wextra -ffreestanding
LDFLAGS			= -T config/linker.ld -nostdlib -m elf_i386

# Sources
ASM_SRC			= $(DRIVERS)/idt/interrupts.asm \
				$(DRIVERS)/bios/32/bios32.asm \
				$(BOOT)/boot_sector.asm \
				$(DRIVERS)/gdt/load_gdt.asm
C_SRC			= $(ENTRY)/kernel_entry.c \
				  $(UTILS)/VGA/clear.c \
				  $(UTILS)/VGA/print.c \
				  $(UTILS)/string/revstr.c \
				  $(UTILS)/string/itoa.c \
				  $(UTILS)/string/strlen.c \
				  $(UTILS)/memory/memset.c \
				  $(UTILS)/memory/memcpy.c \
				  $(DRIVERS)/idt/idt.c \
				  $(DRIVERS)/idt/init.c \
				  $(DRIVERS)/idt/handler.c \
				  $(DRIVERS)/pic/remap.c \
				  $(DRIVERS)/pic/io.c \
				  $(DRIVERS)/keyboard/init.c \
				  $(DRIVERS)/keyboard/handler.c \
				  $(DRIVERS)/vesa/init.c \
				  $(DRIVERS)/gdt/gdt.c \
				  $(DRIVERS)/bios/32/interrupts.c

# Objects
KERNEL_OBJS		= $(ASM_SRC:.asm=.o) $(C_SRC:.c=.o)


all: build

build: $(KERNEL_OBJS)
	$(LD) $(LDFLAGS) -o $(OS_BIN) $(KERNEL_OBJS)
	$(GRUB) -o $(OS_ISO) .

run:
	qemu-system-x86_64 -d int -no-reboot $(OS_ISO)

build_and_run: build run

run_bochs:
	$(RM) $(OS_ISO).lock
	bochs -q -f bochsrc

clean:
	$(RM) $(KERNEL_OBJS)

fclean: clean
	$(RM) $(TARGET_BIN)
	$(RM) $(TARGET_ISO)
	$(RM) $(OS_BIN)
	$(RM) $(OS_ISO)

re: fclean all

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.asm
	$(NASM) $(ASM_FLAGS) -o $@ $<


.PHONY: build run build_and_run clean fclean re
