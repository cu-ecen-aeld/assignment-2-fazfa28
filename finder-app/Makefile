CC = $(CROSS_COMPILE)gcc
CFLAGS = -std=c99

all: writer

ifeq ($(CROSS_COMPILE),)
	CROSS_COMPILE=
endif

writer: writer.o
	$(CC) $(CFLAGS) -o writer writer.o

writer.o: writer.c
	$(CC) $(CFLAGS) -c writer.c

clean:
	rm -f writer writer.o
