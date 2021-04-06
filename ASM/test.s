;; This program will print its own source when run.

%macro ft 1

extern _main, _dprintf

_main:
	jmp	%%instr
	%%file: db "Grace_kid.s", 0x0
	%%source: db %1, 0x0
	%%instr:
	push	rbp
	mov	rbp, rsp
	mov	rax, 0x2000005
	lea	rdi, [rel %%file]
	mov	rsi, 0x601
	mov	rdx, 0o644
	syscall
	jc	%%error
	push	rax
	sub	rsp, 0x8
	print_source rax, [rel %%source]
	add	rsp, 0x8
	mov	rax, 0x2000006
	pop	rdi
	syscall
	xor	rax, rax
	leave
	ret
	%%error:
	mov	rax, 0x1
	leave
	ret

%endmacro

%macro print_source 2

	mov	rdi, %1
	lea	rsi, %2
	lea	rdx, %2
	mov	rcx, 0xa
	mov	r8, 0x9
	mov	r9, 0x22
	call	_dprintf

%endmacro

%define source ";; This program will print its own source when run.%2$c%2$c%%macro ft 1%2$c%2$cextern _main, _dprintf%2$c%2$c_main:%2$c%3$cjmp%3$c%%%%instr%2$c%3$c%%%%file: db %4$cGrace_kid.s%4$c, 0x0%2$c%3$c%%%%source: db %%1, 0x0%2$c%3$c%%%%instr:%2$c%3$cpush%3$crbp%2$c%3$cmov%3$crbp, rsp%2$c%3$cmov%3$crax, 0x2000005%2$c%3$clea%3$crdi, [rel %%%%file]%2$c%3$cmov%3$crsi, 0x601%2$c%3$cmov%3$crdx, 0o644%2$c%3$csyscall%2$c%3$cjc%3$c%%%%error%2$c%3$cpush%3$crax%2$c%3$csub%3$crsp, 0x8%2$c%3$cprint_source rax, [rel %%%%source]%2$c%3$cadd%3$crsp, 0x8%2$c%3$cmov%3$crax, 0x2000006%2$c%3$cpop%3$crdi%2$c%3$csyscall%2$c%3$cxor%3$crax, rax%2$c%3$cleave%2$c%3$cret%2$c%3$c%%%%error:%2$c%3$cmov%3$crax, 0x1%2$c%3$cleave%2$c%3$cret%2$c%2$c%%endmacro%2$c%2$c%%macro print_source 2%2$c%2$c%3$cmov%3$crdi, %%1%2$c%3$clea%3$crsi, %%2%2$c%3$clea%3$crdx, %%2%2$c%3$cmov%3$crcx, 0xa%2$c%3$cmov%3$cr8, 0x9%2$c%3$cmov%3$cr9, 0x22%2$c%3$ccall%3$c_dprintf%2$c%2$c%%endmacro%2$c%2$c%%define source %4$c%1$s%4$c%2$c%2$cft source%2$c"

ft source
