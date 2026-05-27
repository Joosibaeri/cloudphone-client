CC ?= gcc
PKG_CONFIG ?= pkg-config
CFLAGS ?= -O2 -g -Wall -Wextra -Werror
GTK_CFLAGS := $(shell $(PKG_CONFIG) --cflags gtk+-3.0)
GTK_LIBS := $(shell $(PKG_CONFIG) --libs gtk+-3.0)

TARGET ?= main
SRC := main.c

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(GTK_CFLAGS) -o $@ $(SRC) $(GTK_LIBS)

clean:
	rm -f $(TARGET)
