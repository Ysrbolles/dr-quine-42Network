COLLEEN = Colleen
COLLEEN_SRC = Colleen.s

CC = nasm
LD = gcc
CCFLAGS = -f macho64
LDFLAGS = -m64 -lc 2>&-

all: $(COLLEEN) $(GRACE) $(SULLY)
$(COLLEEN):
	@$(CC) $(CCFLAGS) $(COLLEEN_SRC) -o Colleen.o 
	@$(LD) $(LDFLAGS) Colleen.o -o $(COLLEEN)
clean:
	rm -f Colleen.o
fclean: clean
	rm -f $(COLLEEN)
re: fclean all