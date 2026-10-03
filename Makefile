NAME     = echo
CC       = cc
CFLAGS   = -Wall -Wextra -Werror -I include
SRCS     = src/main.c src/ft_echo.c
OBJS     = $(SRCS:.c=.o)
RM       = rm -f

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re