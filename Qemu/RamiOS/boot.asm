;WELCOME to RAMIOS by RANGANADH for QEMU (Intel Machine)
;ctyme.com/intr - Refer for bios asm instructions and interrupts
ORG 0x7C00 
;BIOS loads at 0x7C00. This is the origin address of bootloader
BITS 16 
;This is to define the bootloader is for 16 bit architecture

start:  ;start is just a label to indicate whether the actual bootloader program starts from
	mov si, message
	;load si with message 'Welcome to RamiOS!'
	call print
	; call print and return after printing message
	jmp $
	;jumps to itself, creates infinite loop and controls stays at that point

print:  ;print is just a label like a function and definition
	mov bx,  0  
	;bh for page number, bl for foreground color
.loop:  ;.loop is a sub label to loop 
	lodsb
	;load a character from message in sb
	cmp al, 0
	;compare al with 0
	je .done
	;jump to .done if compare al equals to 0
	call print_char
	;print the character loaded in sb
	jmp .loop
	;jump to .loop label to continue printing
.done:  ;.done is a sub label to return
	ret
	;return to print

print_char:
	mov ah, 0eh 
	;Load 0eh in ah register for video out
	int 0x10 
	;int 0x10 is an interrupt to Display Characters on Terminal
	ret

message: db 'Welcome to RamiOS!', 0

times 510 - ($ - $$) db 0 
;Fill atleast 510 bytes with code and 0 to write boot signature in dw after that.
dw 0xAA55
;0x55AA is to set Boot Signature in the Last 2 Bytes for Intel Machines in Little Endian Format
