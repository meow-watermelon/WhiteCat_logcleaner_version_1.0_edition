CC = gcc
CFLAGS = -g -Wall -Wextra -Wpedantic
C_DEBUG_FLAGS = -DDEBUG

SOURCES = whitecat.c
OBJECTS = $(SOURCES:.c=.o)

LDFLAGS = -static

all: whitecat

whitecat: $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

debug: CFLAGS += $(C_DEBUG_FLAGS)
debug: whitecat

debug-static: CFLAGS += $(C_DEBUG_FLAGS)
debug-static: CFLAGS += $(LDFLAGS)
debug-static: whitecat

clean:
	rm -f $(OBJECTS) whitecat
