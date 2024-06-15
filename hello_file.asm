global _start

section .data
message: db 'Hello, File?!?', 0xa, 0xd
filename: db 'hello.txt', 0
fd: dq 0

section .text
_start:
    ; open the file
    mov rax, 2
    mov rdi, filename 
    mov rsi, 0102o
    mov rdx, 0666o
    syscall

    ; save file descriptor num to fd
    mov [fd], rax

    ; write to file
    mov rax, 1
    mov rdi, [fd]
    mov rsi, message
    mov rdx, 16
    syscall

    ; close the file descriptor
    mov rax, 3
    mov rdi, [fd]
    syscall

    ; exit program
    mov rax, 60
    xor rdi, rdi
    syscall
