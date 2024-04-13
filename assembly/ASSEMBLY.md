## Working with assembly and the gdb debugger:

1. Write your assembly code in a *.asm* file.

2. Generate the .o file `nasm -o my-assembly.o -f elf64 my-assembly.asm`

3. Generate the executable: `ld -o my-assembly my-assembly.o`

4. Run binary with GDB: `gdb my-assembly`

## Useful GDB commands:

