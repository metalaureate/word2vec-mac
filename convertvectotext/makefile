CC = gcc
CFLAGS = -lm -pthread -O2 -march=native -Wall -funroll-loops -Wunused-result

all: convertvec

vec2vec : convertvec.c
	$(CC) convertvec.c -o convertvec $(CFLAGS)

clean:
	rm -rf convertvec
