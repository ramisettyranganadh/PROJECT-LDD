;WELCOME to RAMIOS by RANGANADH for QEMU (Intel Machine)
;ctyme.com/intr - Refer for bios asm instructions and interrupts
ORG 0x7C00 
;BIOS loads at 0x7C00. This is the origin address of bootloader
BITS 16 
;This is to define the bootloader is for 16 bit architecture

start:
;start is just a label to indicate whether the actual bootloader program starts from
    mov ah, 0eh 
   ;Load 0eh in ah register for video out
    mov al, 'R' 
   ;Load Character in al register
    mov bx,  0  
   ;bh for page number, bl for foreground color
    int 0x10 
   ;int 0x10 is an interrupt to Display Characters on Terminal   jmp $
   ;jumps itself and don't allow to write boot signature

times 510 - ($ - $$) db 0 
;Fill atleast 510 bytes with code and 0 to write boot signature in dw after that.
dw 0xAA55
;0x55AA is to set Boot Signature in the Last 2 Bytes for Intel Machines in Little Endian Format
