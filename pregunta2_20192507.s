	.file	"pregunta2_20192507.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "El numero es: %d \12\0"
LC1:
	.ascii "La suma de divisores es: %d \12\0"
LC2:
	.ascii "Numero DEFICIENTE\0"
LC3:
	.ascii "Numero PERFECTO\0"
LC4:
	.ascii "Numero ABUNDANTE\0"
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
L9:
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
	movl	%eax, 24(%esp,%edx,4)
	movl	88(%esp), %eax
	movl	24(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, 84(%esp)
	movl	$0, 92(%esp)
	movl	$1, 84(%esp)
	jmp	L3
L5:
	movl	88(%esp), %eax
	movl	24(%esp,%eax,4), %eax
	cltd
	idivl	84(%esp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L4
	movl	84(%esp), %eax
	addl	%eax, 92(%esp)
L4:
	addl	$1, 84(%esp)
L3:
	movl	88(%esp), %eax
	movl	24(%esp,%eax,4), %eax
	cmpl	84(%esp), %eax
	jg	L5
	movl	92(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	88(%esp), %eax
	movl	24(%esp,%eax,4), %eax
	cmpl	92(%esp), %eax
	jle	L6
	movl	$LC2, (%esp)
	call	_puts
	jmp	L7
L6:
	movl	88(%esp), %eax
	movl	24(%esp,%eax,4), %eax
	cmpl	92(%esp), %eax
	jne	L8
	movl	$LC3, (%esp)
	call	_puts
	jmp	L7
L8:
	movl	$LC4, (%esp)
	call	_puts
L7:
	movl	$10, (%esp)
	call	_putchar
	addl	$1, 88(%esp)
L2:
	cmpl	$14, 88(%esp)
	jle	L9
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
