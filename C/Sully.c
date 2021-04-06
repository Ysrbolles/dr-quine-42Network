#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define i 6
#define TOSTR(x) #x
#define FILE(x) "Sully_" TOSTR(x) ".c"
#define EXECS(x) "Sully_" TOSTR(x)
#define PRINT_SULLY(fd, str, i) dprintf(fd, str, str, 10, 9, 34, i);
#define STR "#include <stdlib.h>%2$c#include <stdio.h>%2$c#include <unistd.h>%2$c#include <fcntl.h>%2$c%2$c#define i %5$d%2$c#define TOSTR(x) #x%2$c#define FILE(x) %4$cSully_%4$cTOSTR(x)%4$c.c%4$c%2$c#define EXECS(x) %4$cSully_%4$c TOSTR(x)%2$c#define PRINT_SULLY(fd, str, i) dprintf(fd, str, str, 10 , 9, 34, i);%2$c%2$c#define STR %4$c%1$s%4$c%2$c%2$c int main(void)%2$c{%2$c%3$cint fd = open(FILE(i), O_WRONLY | O_CREAT, 777);%2$c%3$c if (fd < 0)%2$c%3$c%3$creturn (1);%2$c%3$cPRINT_SULLY(fd, STR, i - 1);%2$c%3$csystem(%4$cgcc %4$cFILE(i) %4$c -o %4$c EXECS(i));%2$c%3$cif(i > 0)system(%4$c./%4$cEXECS(i));%2$c%3$creturn (0);%2$c}%2$c"

int main(void)
{
    int fd = open(FILE(i), O_RDWR | O_CREAT, 0644);
    if (fd < 0)
        return (1);
    PRINT_SULLY(fd, STR, i - 1);
    system("gcc " FILE(i) " -o " EXECS(i));
    if (i > 0)
        system("./" EXECS(i));
    return (0);
}