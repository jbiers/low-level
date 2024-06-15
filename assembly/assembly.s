	.file	"assembly.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"Syntax: ./assembly numA numB"
	.align 8
.LC1:
	.string	"The sum of %i + %i is equal to %i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# argc, argc
	mov	QWORD PTR -32[rbp], rsi	# argv, argv
# assembly.c:8:   if (argc < 3) {
	cmp	DWORD PTR -20[rbp], 2	# argc,
	jg	.L2	#,
# assembly.c:9:     printf("Syntax: ./assembly numA numB\n");
	lea	rax, .LC0[rip]	# tmp90,
	mov	rdi, rax	#, tmp90
	call	puts@PLT	#
# assembly.c:10:     return 1;
	mov	eax, 1	# _7,
	jmp	.L3	#
.L2:
# assembly.c:13:   int b = strtol(argv[2], NULL, 10);
	mov	rax, QWORD PTR -32[rbp]	# tmp91, argv
	add	rax, 16	# _1,
# assembly.c:13:   int b = strtol(argv[2], NULL, 10);
	mov	rax, QWORD PTR [rax]	# _2, *_1
	mov	edx, 10	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, _2
	call	strtol@PLT	#
# assembly.c:13:   int b = strtol(argv[2], NULL, 10);
	mov	DWORD PTR -12[rbp], eax	# b, _3
# assembly.c:14:   int a = strtol(argv[1], NULL, 10);
	mov	rax, QWORD PTR -32[rbp]	# tmp92, argv
	add	rax, 8	# _4,
# assembly.c:14:   int a = strtol(argv[1], NULL, 10);
	mov	rax, QWORD PTR [rax]	# _5, *_4
	mov	edx, 10	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, _5
	call	strtol@PLT	#
# assembly.c:14:   int a = strtol(argv[1], NULL, 10);
	mov	DWORD PTR -8[rbp], eax	# a, _6
# assembly.c:16:   int total = sum(a, b);
	mov	edx, DWORD PTR -12[rbp]	# tmp93, b
	mov	eax, DWORD PTR -8[rbp]	# tmp94, a
	mov	esi, edx	#, tmp93
	mov	edi, eax	#, tmp94
	call	sum	#
	mov	DWORD PTR -4[rbp], eax	# total, tmp95
# assembly.c:17:   printf("The sum of %i + %i is equal to %i\n", a, b, total);
	mov	ecx, DWORD PTR -4[rbp]	# tmp96, total
	mov	edx, DWORD PTR -12[rbp]	# tmp97, b
	mov	eax, DWORD PTR -8[rbp]	# tmp98, a
	mov	esi, eax	#, tmp98
	lea	rax, .LC1[rip]	# tmp99,
	mov	rdi, rax	#, tmp99
	mov	eax, 0	#,
	call	printf@PLT	#
# assembly.c:19:   return 0;
	mov	eax, 0	# _7,
.L3:
# assembly.c:20: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	sum
	.type	sum, @function
sum:
.LFB7:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -20[rbp], edi	# a, a
	mov	DWORD PTR -24[rbp], esi	# b, b
# assembly.c:25:   __asm__(
	mov	eax, DWORD PTR -20[rbp]	# tmp85, a
	mov	edx, DWORD PTR -24[rbp]	# tmp86, b
#APP
# 25 "assembly.c" 1
	mov eax, eax	# tmp85
add eax, edx	# tmp86
mov eax, eax	# result
# 0 "" 2
#NO_APP
	mov	DWORD PTR -4[rbp], eax	# result, result
# assembly.c:33:   return result;
	mov	eax, DWORD PTR -4[rbp]	# _4, result
# assembly.c:34: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	sum, .-sum
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
