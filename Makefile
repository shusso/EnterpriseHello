CC=gcc
CFLAGS=-I.
OBJ=hello.o

all: test

test: hello
	@./hello

hello: $(OBJ)
	@$(CC) -o $@ $^

%.o: %.c
	@$(CC) -c -o $@ $^

clean:
	@rm *.o
	@rm hello

.PHONY: all clean test

