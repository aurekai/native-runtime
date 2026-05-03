CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -std=c11
LOCAL_CFLAGS = -I../../lib/libbonfyre/include
LDFLAGS_BF = -L../../lib/libbonfyre -lbonfyre

all: akai-distribute

akai-distribute: src/main.c
	$(CC) $(CFLAGS) $(LOCAL_CFLAGS) -o akai-distribute src/main.c $(LDFLAGS_BF)

clean:
	rm -f akai-distribute
