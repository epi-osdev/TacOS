CC				= i686-elf-gcc
SRC				= memcpy.c \
				memset.c \
				malloc.c
OBJ				= $(SRC:.c=.o)
CFLAGS			= -W -Wall -Wextra -fno-builtin -I ../
NAME			= libmemory.a

all: $(NAME)

$(NAME): $(OBJ)
	ar rsc $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<