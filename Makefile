CC=g++

CFLAGS=-c -Wall

all: main mylib.a

main: main.o mylib.a
	$(CC) main.o mylib.a

message.o: message.cpp message.h
	$(CC) $(CFLAGS) message.cpp

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

mylib.a: message.o
	ar -rcs mylib.a message.o

clean:
	rm -rf *.o main