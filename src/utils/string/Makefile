CC			= i686-elf-gcc
SRC			= itoa.c \
			revstr.c \
			strlen.c \
			split.c \
			is_in.c \
			strndup.c \
			strcmp.c \
			strcat.c

OBJ			= $(SRC:.c=.o)
INCLUDES	= -I ../
CFLAGS		= -c -W -Wall -Wextra -Werror -fno-builtin $(INCLUDES)
NAME		= libstring.a

all: $(NAME)

$(NAME): $(OBJ)
	ar rsc $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $<
