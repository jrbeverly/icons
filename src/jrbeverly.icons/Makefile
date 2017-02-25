DIR=$(shell basename $(CURDIR))
BIN="../../bin/$(DIR)"

all: build

build:
	mkdir -p $(BIN)
	rsvg-convert -h 480 -f svg icon.svg > $(BIN)/icon.svg
	rsvg-convert -h 200 icon.svg > $(BIN)/icon.png
	rsvg-convert -h 480 icon.svg > $(BIN)/icon-480.png
	rsvg-convert -h 480 -f svg profile.svg > $(BIN)/profile.svg
	rsvg-convert -h 200 profile.svg > $(BIN)/profile.png
	rsvg-convert -h 480 profile.svg > $(BIN)/profile-480.png

clean: 
	rm -rf $(BIN)