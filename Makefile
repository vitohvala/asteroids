CC=gcc
LIBS=-lSDL3 -lm
FLAGS=-g -Wall -Wextra  
INCDIR=-I./include/
LIBDIR=-L./lib/
TARGET=main.c glad.c
BIN=asteroid

all:
	$(CC) -o $(BIN) $(TARGET) $(FLAGS) $(LIBS) $(LIBDIR) $(INCDIR) 

run: all
	./$(BIN)

clean: 
	rm $(BIN)
