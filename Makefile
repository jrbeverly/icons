
build:
	sh .build/build.sh
clean:
	sh .build/clean.sh

rebuild: clean build
all: build