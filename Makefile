
build:
	sh .build/build.sh
clean:
	rm -rf bin/*

rebuild: clean build
all: build