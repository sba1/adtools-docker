.PHONY: all
all: target/helloworld

target/helloworld: helloworld.c
	mkdir -p target
	ppc-amigaos-gcc -O2 $< -o $@
