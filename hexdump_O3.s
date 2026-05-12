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
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	fopen
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
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
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	printf
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L17:
	movzbl	(%rsp,%rbx), %esi
	movl	$.LC3, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	printf
	cmpq	$16, %rbx
	je	.L16
.L5:
	cmpl	%ebx, %r14d
	jg	.L17
	movl	$.LC4, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	printf
	cmpq	$16, %rbx
	jne	.L5
.L16:
	movl	$124, %edi
	leal	-1(%rbp), %r14d
	movq	%rsp, %rbx
	call	putchar
	leaq	1(%rsp), %rax
	addq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	(%rbx), %edi
	leal	-32(%rdi), %eax
	cmpb	$94, %al
	jbe	.L13
	movl	$46, %edi
.L13:
	call	putchar
	addq	$1, %rbx
	cmpq	%r14, %rbx
	jne	.L8
	movl	$.LC5, %edi
	movslq	%ebp, %rbp
	call	puts
	addq	%rbp, %r12
	jmp	.L2
.L15:
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
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
