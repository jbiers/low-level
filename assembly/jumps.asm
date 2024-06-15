; IP (EIP or RIP) register always points to the next intruction. You can't change it with 
; a MOV intruction. We use `JMP address`.
;
;
section .data

regSmaller: db 'edi smaller than esi', 0xa, 0xd
regLarger:  db 'edi larger than esi', 0xa, 0xd
regEqual:   db 'edi equal to esi', 0xa, 0xd

section .text

global _start

printSmaller:
	mov eax, 4
	mov ebx, 1
	mov ecx, regSmaller
	mov edx, 22 
	int 0x80
	call exit

printLarger:
        mov eax, 4
        mov ebx, 1
        mov ecx, regLarger
        mov edx, 21
        int 0x80
        call exit

printEqual:
        mov eax, 4
        mov ebx, 1
        mov ecx, regEqual
        mov edx, 18
        int 0x80
        call exit

exit:
	mov eax, 1
	xor ebx, ebx
	int 0x80

_start:

	mov edi, 10
	mov esi, 100

	cmp edi, esi
	jb printSmaller
	ja printLarger
	je printEqual
	call exit
