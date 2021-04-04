
NAME = libasm.a

SRC = ft_strlen.s

OBJ = $(SRC:.s=.o)


FLAGS = -f macho64

NM = nasm

all: $(NAME)


$(NAME): $(OBJ)
		@ar rcs $(NAME) $(OBJ)
		@echo 'SUCCESS'

%.o : %.s
		@$(NM) $(FLAGS) $< -o $@
		

clean:
		@rm -rf $(OBJ)
		@echo 'CLEAN'

fclean: clean
		@rm -rf $(NAME)

re: fclean clean