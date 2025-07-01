all:
	nasm -f bin ./boot.asm -o ./boot.bin
	ndisasm ./boot.bin
	qemu-system-x86_64 -hda ./boot.bin
