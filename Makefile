all:
	nasm -f bin src/boot.asm -o bin/boot.img
	qemu-system-i386 -drive format=raw,file=bin/boot.img

build:
	nasm -f bin src/boot.asm -o bin/boot.img

run:
	qemu-system-i386 -drive format=raw,file=bin/boot.img

clean:
	rm -rf bin
	mkdir bin


