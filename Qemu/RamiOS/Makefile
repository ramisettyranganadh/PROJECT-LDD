all:
	nasm -f bin ./boot.asm -o ./boot.bin #To compile asm
	ndisasm ./boot.bin #To display memory
	qemu-system-x86_64 -hda ./boot.bin #To load on emulator
	#sudo fdisk -l #To display list of disks
	#sudo if=./boot.bin of=/dev/sdb #To load image on USB disk
