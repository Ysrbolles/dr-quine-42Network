; Comment.

%macro salam 1

extern _main, _printf

_main:
    %%str: db %1
    mov rdi, %%str
    mov rsi, rdi
    call _printf
   
%endmacro

%define str "; Comment."

salam str