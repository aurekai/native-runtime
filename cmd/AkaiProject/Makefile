CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -std=c11

all: akai-project

akai-project: src/main.c
	$(CC) $(CFLAGS) -o $@ src/main.c

clean:
	rm -f akai-project
