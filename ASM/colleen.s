; Comment 1.

global _main
extern _printf

section .text


_main:
    ; Comment 2.
    mov r12, str
    call _colleen
    
_colleen:
    mov rdi, r12
    mov rsi, r12
    mov rdx, 10
    mov rcx, 9
    mov r8, 34
    call _printf
    mov rax, 0x2000001
    mov rdi, 0
    syscall


section .rodata
str: db '; Comment 1.%2$c%2$cglobal _main%2$cextern _printf%2$c%2$csection .text%2$c%2$c%2$c_main:%2$c%3$c; Comment 2.%2$c%3$cmov r12, str%2$c%3$ccall _colleen%2$c%2$c_colleen:%2$c%3$cmove rdi, r12%2$c%3$cmove rsi, r12%2$c%3$cmov rdx, 10%2$c%3$cmov rcx, 9%2$c%3$cmov r8, 34%2$c%3$ccall _printf%2$c%3$cmov rax, 0x2000001%2$c%3$cmov rdi, 0%2$c%3$csyscall%2$c%2$c%2$csection .rodata%2$cstr: db %4$c%1$s%4$c%2$c'
