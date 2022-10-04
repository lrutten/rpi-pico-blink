all: help

help:
	echo "make clean"
	echo "make init"

init:
	mkdir build;cd build; cmake ..

build/blink.uf2: blink.c
	cd build; make

install: build/blink.uf2
	picotool load build/blink.uf2

info:
	picotool info -a

clean:
	rm -Rvf build

