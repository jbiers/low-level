## Working with assembly and the gdb debugger:

1. Write your assembly code in a *.asm* file.

2. Generate the .o file `nasm -o my-assembly.o -f elf64 my-assembly.asm`

3. Generate the executable: `ld -o my-assembly my-assembly.o`

4. Run binary with GDB: `gdb my-assembly`

## Useful GDB commands:

- `quit`
- `file your-file-name` ; loads a file into the debugger
- `tab` ; for a command list
- `help cmd`
- `run`
- `break x`
- `break *address`
- `stepi` or `si` 
- `layout asm`
- `layout regs`


#### .gdbinit file can be useful
- add `set auto-load safe-path /`
- add `set disassembly-flavor intel` to the ~/.gdbinit file
