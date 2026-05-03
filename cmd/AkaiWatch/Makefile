CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -std=c11

BIN = akai-watch
SRC = src/main.c

all: $(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) -I../../lib/libbonfyre/include -o $@ $(SRC) ../../lib/libbonfyre/libbonfyre.a -lsqlite3

clean:
	rm -f $(BIN)

.PHONY: all clean
