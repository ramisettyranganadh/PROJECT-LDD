How to Build Bootloader in QEMU:

    https://www.ctyme.com/rbrown.htm
    sudo apt update; sudo apt install nasm;
    nasm -V; sudo apt install qemu-system-x86;
    qemu-system-X86_64; mkdir RamiOS;
    cd PeachOS; vi boot.asm;
    vi Makefile; make;
    nasm -f bin ./boot.asm -o ./boot.bin
    ndiasm ./boot.bin
    qemu-system-x86_64 -hda ./boot.bin

