SRCDIR=src
SRC=$(wildcard $(SRCDIR)/*.c)
OBJ=$(SRC:.c=.o)
CC=gcc
CFLAGS=`pkg-config --cflags --libs SDL2_ttf`

mygame: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: $(SRCDIR)/%.c
	gcc -c $< -o $@

clean:
	rm -rf $(SRCDIR)/*.o
