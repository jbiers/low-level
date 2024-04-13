mov eax, 0xF
mov ebx, eax
mov eax, 0x17

mov esp, ebp

push 0x05
push eax
push ebx

mov [0xFF4], ebx ; Here, I indicate the address 0xff4 instead of the hex value 0xff4
mov [0xFFC], 0x6
mov ebx, [0xFF8]
