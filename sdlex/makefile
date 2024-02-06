SRCDIR=src
DEVDIR=dev
SRC=$(wildcard $(SRCDIR)/*.c)
OBJ=$(SRC:.c=.o)
CC=gcc
CFLAGS=-lsdl2

mygame: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: $(SRCDIR)/%.c
	gcc -c $< -o $@

clean:
	rm -rf $(SRCDIR)/*.o
