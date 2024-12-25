ifeq ($(OS),Windows_NT)
    CC=x86_64-w64-mingw32-gcc
	BIN=asteroid.exe
else
	CC=gcc
	BIN=asteroid
endif
LIBS=-lSDL3 -lm
LIBDIR=-L./lib/
INCDIR=-I./include/
FLAGS= -g -Wall -Wextra -O2
TARGET=main.c glad.c

all:
	$(CC) -o $(BIN) $(TARGET) $(LIBDIR) $(INCDIR) $(FLAGS) $(LIBS)  

run: all
	./$(BIN)

clean: 
	rm $(BIN)
	rm $(BIN).exe

asm:  
	$(CC) -S $(TARGET) $(LIBDIR) $(INCDIR) $(FLAGS) $(LIBS)
