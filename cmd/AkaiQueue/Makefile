CC      ?= cc
CFLAGS  ?= -O2 -Wall -Wextra -std=c11
LOCAL_CFLAGS = -I../../lib/libbonfyre/include
LDFLAGS ?= ../../lib/libbonfyre/libbonfyre.a -lsqlite3 -lpthread

all: akai-queue

akai-queue: src/main.c
	$(CC) $(CFLAGS) $(LOCAL_CFLAGS) -o akai-queue src/main.c $(LDFLAGS)

clean:
	rm -f akai-queue
