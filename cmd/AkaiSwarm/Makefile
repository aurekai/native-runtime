CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -std=c11

all: akai-swarm

akai-swarm: src/main.c
	$(CC) $(CFLAGS) -o akai-swarm src/main.c -lsqlite3

clean:
	rm -f akai-swarm
