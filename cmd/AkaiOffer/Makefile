CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -std=c11
LOCAL_CFLAGS = -I../../lib/libbonfyre/include
LDFLAGS  = -L../../lib/libbonfyre -lbonfyre

all: akai-offer

akai-offer: src/main.c
	$(CC) $(CFLAGS) $(LOCAL_CFLAGS) -o akai-offer src/main.c $(LDFLAGS)

clean:
	rm -f akai-offer
