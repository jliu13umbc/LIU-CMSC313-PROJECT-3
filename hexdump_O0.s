	.file	"hexdump.c"
	.text
	.section	.rodata
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
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	fopen
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -12(%rbp)
	jmp	.L3
.L6:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L4
	movl	-12(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L5
.L4:
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L5:
	addl	$1, -12(%rbp)
.L3:
	cmpl	$15, -12(%rbp)
	jle	.L6
	movl	$124, %edi
	call	putchar
	movl	$0, -16(%rbp)
	jmp	.L7
.L10:
	movl	-16(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	cmpb	$31, %al
	jbe	.L8
	movl	-16(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	cmpb	$126, %al
	ja	.L8
	movl	-16(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	jmp	.L9
.L8:
	movl	$46, %edi
	call	putchar
.L9:
	addl	$1, -16(%rbp)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L10
	movl	$.LC5, %edi
	call	puts
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
.L2:
	movq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L11
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.5.0 20240719 (Red Hat 11.5.0-5)"
	.section	.note.GNU-stack,"",@progbits
