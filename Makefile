all: help

help:
	echo "make clean"
	echo "make init"

init:
	mkdir build;cd build; cmake .. 

build/blink.uf2: blink.c
	cd build; make

clean:
	rm -Rvf build

