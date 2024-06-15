section .data
numbers: db '0123456789'
space: db 0xd, 0xa

LENGTH EQU 0xA
; same as %assign LENGTH 0xA
; %define LENGTH 0XA works too, it is the most powerful 

%define STDOUT mov ebx, 1

section .text
global _start

_start:
xor esi, esi
call loopStart

printSpace:
mov eax, 4
STDOUT
lea ecx, [space]
mov edx, 2
int 0x80
call loopEnd

loopStart:
	mov eax, 4
	STDOUT
	lea ecx, [numbers + esi]
	mov edx, 1
	int 0x80
	
	cmp esi, LENGTH
	jl printSpace
	call loopEnd
	
loopEnd:
	inc esi
	cmp esi, LENGTH
	jle loopStart
	mov eax, 1
	int 0x80

