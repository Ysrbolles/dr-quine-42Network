/*
	Comment 1.
*/
int print(const char *s, ...);
#include <stdio.h>

void Colleen(char const *str)
{
    printf(str, str, 10, 9, 34);
}

int main(void)
{

    /*
	Comment 2.
*/

    const char *str = "/*%2$c%3$cComment 1.%2$c*/%2$c%2$c#include <stdio.h>%2$c%2$cvoid Colleen(char const *str)%2$c{%2$c%2$c%3$cprintf(str, str, 10, 9, 34);%2$c}%2$c%2$cint main(void)%2$c{%2$c%2$c/*%2$c%3$cComment 2.%2$c*/%2$c%3$cconst char *str = %4$c%1$s%4$c;%2$c%3$cColleen(str);%2$c%3$creturn (0);%2$c}";
    Colleen(str);
    return (0);
}