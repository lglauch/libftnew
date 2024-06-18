NAME = libft.a

CFLAGS = -c -Werror -Wall -Wextra

SRCS = ft_isalpha.c    ft_isprint.c    ft_memset.c     ft_strlcpy.c    ft_tolower.c\
ft_bzero.c      ft_isascii.c    ft_memcpy.c     ft_strchr.c     ft_strlen.c     ft_toupper.c\
ft_isalnum.c    ft_isdigit.c    ft_memmove.c    ft_strlcat.c    ft_strrchr.c	ft_strncmp.c\
ft_memchr.c		ft_memcmp.c		ft_strnstr.c	ft_atoi.c		ft_calloc.c		ft_strdup.c\
ft_substr.c		ft_strjoin.c	ft_strtrim.c	ft_split.c		ft_itoa.c		ft_strmapi.c\
ft_striteri.c	ft_putchar_fd.c ft_putstr_fd.c  ft_putendl_fd.c ft_putnbr_fd.c\

OBJ = $(SRCS:.c=.o)

BONUS_SRC = ft_lstnew_bonus.c ft_lstadd_front_bonus.c	ft_lstsize_bonus.c ft_lstlast_bonus.c\
ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

BONUS_OBJ = $(BONUS_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

bonus: $(BONUS_OBJ)
	ar rc $(NAME) $(BONUS_OBJ)

$(OBJ): $(SRCS)
	cc $(CFLAGS) $(SRCS)

$(BONUS_OBJ): $(BONUS_SRC)
	cc $(CFLAGS) $(BONUS_SRC)

clean:
	rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME) $(BONUS_OBJ)

re: fclean all