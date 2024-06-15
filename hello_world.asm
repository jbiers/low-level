global _start

section .data
message: db 'Hello, World!', 0xa, 0xd

section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 15
    syscall
