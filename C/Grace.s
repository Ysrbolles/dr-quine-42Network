	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	L_.str(%rip), %rdi
	movl	$513, %esi              ## imm = 0x201
	movl	$420, %edx              ## imm = 0x1A4
	movb	$0, %al
	callq	_open
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jge	LBB0_2
## %bb.1:
	movl	$1, -4(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-8(%rbp), %edi
	leaq	L_.str.1(%rip), %rax
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	$10, %ecx
	movl	$9, %r8d
	movl	$34, %r9d
	movb	$0, %al
	callq	_dprintf
	movl	-8(%rbp), %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_close
	movl	$0, -4(%rbp)
	movl	%eax, -16(%rbp)         ## 4-byte Spill
LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Grace_kid.c"

L_.str.1:                               ## @.str.1
	.asciz	"/*%2$c%3$cComment.%2$c*/%2$c%2$c#include <stdio.h>%2$c#include <unistd.h>%2$c#include <fcntl.h>%2$c%2$c#define GRACE(fd, str) dprintf(fd, str, str, 10, 9, 34);%2$c#define FT(x) int main(void) { int fd = open(%4$cGrace_kid.c%4$c, O_WRONLY | O_CREAT, 0644); if (fd < 0) return (1); GRACE(fd, x); close(fd); return (0);}%2$c#define STR %4$c%1$s%4$c%2$c%2$cFT(STR)"


.subsections_via_symbols
