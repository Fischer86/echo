# Nom de l'exécutable
NAME        = echo

# Compilateur et flags stricts
CC          = cc
CFLAGS      = -Wall -Wextra -Werror

# Dossiers
SRC_DIR     = src
INC_DIR     = include

# Fichiers sources
SRCS        = $(SRC_DIR)/main.c \
              $(SRC_DIR)/ft_echo.c

# Transformation des .c en .o
OBJS        = $(SRCS:.c=.o)

# Chemin vers le header
INCLUDES    = -I $(INC_DIR)

# Commande de suppression
RM          = rm -f

# --- Règles ---

# Règle par défaut
all: $(NAME)

# Compilation de l'exécutable
$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

# Compilation des objets (le $< représente le .c, le $@ le .o)
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

# Suppression des fichiers objets
clean:
	$(RM) $(OBJS)

# Suppression des objets ET de l'exécutable
fclean: clean
	$(RM) $(NAME)

# Recompilation complète
re: fclean all

# Déclaration des règles qui ne sont pas des fichiers
.PHONY: all clean fclean re