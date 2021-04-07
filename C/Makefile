FLAGS = -Wall -Wextra -Werror
NAME = Colleen Grace Sully

NAME: all

all: $(NAME)

Colleen: Colleen.c
	gcc $(FLAGS) -c Colleen.c -o Colleen.o
	gcc $(FLAGS) Colleen.o -o Colleen
Grace: Grace.c
	gcc $(FLAGS) -c Grace.c -o Grace.o
	gcc $(FLAGS) Grace.o -o Grace
Sully: Sully.c
	gcc $(FLAGS) -c Sully.c -o Sully.o
	gcc $(FLAGS) Sully.o -o Sully



clean:
	@rm -f Colleen.o
	@rm -f Grace.o
	@rm -f Sully.o
	@echo "Done Clean"

fclean: clean
	@rm -rf Colleen Grace Sully
	@rm -f Sully_*
	@rm -f Grace_kid.c
	@echo "Done fclean"

re: fclean all

.PHONY: all clean fclean re