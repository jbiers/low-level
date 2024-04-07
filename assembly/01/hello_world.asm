section .data
message: db 'Hello, World!', 0xa, 0xd

section .text

global _start:
_start:
	mov eax, 4	 ; write syscall
	mov ebx, 1	 ; where the bytes will be written (stdout = 1)
	mov ecx, message ; string address
	mov edx, 14      ; amount of bytes to be written
	int 0x80	 ; interrupt syscall

	mov eax, 1	 ; exit syscall
	int 0x80

