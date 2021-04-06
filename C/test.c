#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define STR "#include <stdlib.h>%2$c#include <stdio.h>%2$c#include <unistd.h>%2$c#include <fcntl.h>%2$c%2$c#define STR %4$c%1$s%4$c%2$c%2$cvoid PRINT_SULLY(int fd, char *str,  int i)%2$c{%2$c%3$cdprintf(fd, str, str, 10, 9, 34, i);%2$c}%2$c%2$cint main(void)%2$c{%2$c%3$cint i = %5$d;%2$c%3$cchar FILE[10];%2$c%3$cif (i > 0) i--;%2$c%3$csprintf(FILE, %4$cSully_%d.c%4$c, i);%2$c%3$cint fd = open(FILE, O_RDWR | O_CREAT, 0644);%2$c%3$cif (fd < 0)%2$c%3$c%3$creturn (1);%2$c%3$cPRINT_SULLY(fd, STR,i);%2$c%3$cchar se[80];sprintf(se, %4$cgcc  %s -o Sully_%d && ./Sully_%d%4$c, FILE, i, i);%2$c%3$csystem(se);%2$c%3$creturn (0);%2$c}%2$c"

void PRINT_SULLY(int fd, char *str, int i)
{
    dprintf(fd, str, str, 10, 9, 34, i);
}

int main(void)
{
    printf("sa");
    int i = 5;
    char FILE[50];
    printf("saa");
    if (i > 0) i--;
    printf("saaa");
    sprintf(FILE, "Sully_%d.c", i);
    printf("saaaa");
    printf("%s", FILE);
    int fd = open(FILE, O_RDWR | O_CREAT, 0644);
    if (fd < 0)
        return (1);
    PRINT_SULLY(fd, STR, i);
    // char se[100]; sprintf(se, "gcc  %s -o Sully_%d", FILE, i);
    // system(se);
    return (0);
}