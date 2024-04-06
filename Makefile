
all:
	nasm -felf64 main.asm -o main.o
	ld -o main main.o
	chmod u+x main


lib:
	nasm -felf64 lib.inc -o lib.o
	ld -o libio lib.o
	chmod u+x libio
