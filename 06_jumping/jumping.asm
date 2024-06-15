section .data
lessThan: db "rdi less than rsi", 0xa, 0xd
largerThan: db "rdi larger than rsi", 0xa, 0xd
equalTo: db "rdi equal to rsi", 0xa, 0xd

section .text

exit:
    mov rdi, rax
    mov rax, 60
    syscall

printLarger:
    mov rax, 1
    mov rdi, 1
    mov rsi, largerThan
    mov rdx, 21
    syscall
    call exit

printSmaller:
    mov rax, 1
    mov rdi, 1
    mov rsi, lessThan
    mov rdx, 19
    syscall
    call exit

printEqual:
    mov rax, 1
    mov rdi, 1
    mov rsi, equalTo
    mov rdx, 18
    syscall
    call exit

global _start
_start:
    mov rdi, 1
    mov rsi, 2

    cmp rdi, rsi
    jb printSmaller
    call exit