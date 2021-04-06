FLAGS = -Wall -Wextra -Werror

SRCS = Colleen.c Grace.c Sully.c

NAME: all

all: Colleen Grace Sully

Colleen: Colleen.c
	gcc $(FLAGS) -c Colleen.c -o Colleen.o
	gcc $(FLAGS) Colleen.o -o Colleen
Grace: Grace.c
	gcc $(FLAGS) Grace.c -o Grace
Sully: Sully.c
	gcc $(FLAGS) Sully.c -o Sully



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