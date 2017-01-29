DIR=$(shell basename $(CURDIR))
BIN="../../bin/$(DIR)"

all: build

build:
	mkdir -p $(BIN)
	rsvg-convert -h 480 -f svg icon.svg > $(BIN)/icon.svg
	rsvg-convert -h 480 icon.svg > $(BIN)/icon-480.png

clean: 
	rm -rf $(BIN)