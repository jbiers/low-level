__asm__(
	"instruction1\n"
	"instruction2\n"
	"instruction3"
	: [output] "=r" (sumResult)
	: [numA] "r" (numA), [numB] "r" (numB)
);

__asm__ __volatile__(

)

gcc program.c -o program -masm=att
gcc programa.c -o program -masm=intel
gcc -c -masm=intel -fverbose-asm assembly.c
gcc -S -masm=intel -fverbose-asm assembly.c

