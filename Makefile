CC=clang
LIBS=-lSDL3 -lm
FLAGS=-g -Wall -Wextra
INCDIR=-I./include/
LIBDIR=-L./lib/
TARGET=main.c glad.c
BIN=asteroid

all:
	$(CC) -o $(BIN) $(TARGET) $(LIBDIR) $(INCDIR) $(FLAGS) $(LIBS) 

run: all
	./$(BIN)

clean: 
	rm $(BIN)
