global _start

section .data
message: db 'Hello, Labels.', 0xa, 0xd

section .bss
name: resb 30 ; "reserve bytes",  variable declared but not initialized

section .text
_start:
