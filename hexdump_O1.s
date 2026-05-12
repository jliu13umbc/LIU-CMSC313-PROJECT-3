	.file	"hexdump.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"rb"
.LC1:
	.string	"binary.out"
.LC2:
	.string	"%08lx "
.LC3:
	.string	"%02x "
.LC4:
	.string	"   "
.LC5:
	.string	"|"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	fopen
	movq	%rax, %r13
	movl	$0, %r12d
	jmp	.L2
.L3:
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L4:
	addq	$1, %rbx
	cmpq	$16, %rbx
	je	.L13
.L5:
	cmpl	%ebx, %r14d
	jle	.L3
	movzbl	(%rsp,%rbx), %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L4
.L13:
	movl	$124, %edi
	call	putchar
	movq	%rsp, %rbx
	leal	-1(%rbp), %eax
	leaq	1(%rsp,%rax), %r14
	jmp	.L8
.L6:
	movl	$46, %edi
	call	putchar
.L7:
	addq	$1, %rbx
	cmpq	%r14, %rbx
	je	.L14
.L8:
	movzbl	(%rbx), %edi
	leal	-32(%rdi), %eax
	cmpb	$94, %al
	ja	.L6
	movzbl	%dil, %edi
	call	putchar
	jmp	.L7
.L14:
	movl	$.LC5, %edi
	call	puts
	movslq	%ebp, %rbp
	addq	%rbp, %r12
.L2:
	movq	%r13, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread
	movq	%rax, %rbp
	movl	%eax, %r14d
	testl	%eax, %eax
	jle	.L15
	movq	%r12, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %ebx
	jmp	.L5
.L15:
	movl	$0, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.5.0 20240719 (Red Hat 11.5.0-5)"
	.section	.note.GNU-stack,"",@progbits
