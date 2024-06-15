section .data
; global variables and constants to be initialized

message: db 'Hello you bitch', 0xa, 0xd




section .bss
; global variables declared but not initialized
user: resb 30




section .text
; where the program is written
global _start
; this is like the 'main' function in assembly,
; the program entrypoint
_start:
