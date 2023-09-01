	.file	"pregunta2_20192507.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "El arreglo es: \0"
LC1:
	.ascii "%d \0"
LC2:
	.ascii "\12\0"
LC3:
	.ascii "%d - DEFICIENTE\0"
LC4:
	.ascii "%d - PERFECTO\0"
LC5:
	.ascii "%d - ABUNDANTE\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$96, %esp
	call	___main
	movl	$10, (%esp)
	call	_putchar
	movl	$1, 88(%esp)
	jmp	L2
L3:
	call	_rand
	movl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	88(%esp), %edx
	movl	%eax, 16(%esp,%edx,4)
	addl	$1, 88(%esp)
L2:
	cmpl	$14, 88(%esp)
	jle	L3
	movl	$LC0, (%esp)
	call	_printf
	movl	$1, 84(%esp)
	jmp	L4
L5:
	movl	84(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 84(%esp)
L4:
	cmpl	$14, 84(%esp)
	jle	L5
	movl	$LC2, (%esp)
	call	_puts
	movl	$1, 80(%esp)
	jmp	L6
L13:
	movl	$0, 76(%esp)
	movl	$0, 92(%esp)
	movl	$1, 76(%esp)
	jmp	L7
L9:
	movl	80(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	cltd
	idivl	76(%esp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L8
	movl	76(%esp), %eax
	addl	%eax, 92(%esp)
L8:
	addl	$1, 76(%esp)
L7:
	movl	80(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	cmpl	76(%esp), %eax
	jg	L9
	movl	80(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	cmpl	92(%esp), %eax
	jle	L10
	movl	80(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	jmp	L11
L10:
	movl	80(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	movl	%eax, 92(%esp)
	cmpl	$0, 92(%esp)
	je	L12
	movl	80(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	jmp	L11
L12:
	movl	80(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
L11:
	movl	$10, (%esp)
	call	_putchar
	addl	$1, 80(%esp)
L6:
	cmpl	$14, 80(%esp)
	jle	L13
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
