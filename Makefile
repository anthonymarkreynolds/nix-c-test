PREFIX=/usr/local
BIN_DIR=$(PREFIX)/bin

all: build

build: a.out
a.out: main.c
	gcc main.c

install: build
	mkdir -p $(BIN_DIR)
	cp a.out $(BIN_DIR)/myProgram
