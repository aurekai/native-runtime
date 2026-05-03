CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -std=c11
LOCAL_CFLAGS = -I../../lib/libbonfyre/include
LDFLAGS  = -L../../lib/libbonfyre -lbonfyre

all: akai-render

akai-render: src/main.c
	$(CC) $(CFLAGS) $(LOCAL_CFLAGS) -o $@ src/main.c $(LDFLAGS)

clean:
	rm -f akai-render
