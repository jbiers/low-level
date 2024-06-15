section .data
message: db 'Hello, World!', 0xa, 0xd

section .text

%macro print 2
	mov eax, 4
	mov ebx, 1
	mov ecx, %1
	mov edx, %2
	int 0x80
%endmacro

global _start:
_start:
	print message, 15	

	mov eax, 1
	int 0x80
