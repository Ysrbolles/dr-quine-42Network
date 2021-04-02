/*
	Comment 1.
*/

#include <stdio.h>

int main(void)
{
/*
	Comment 2.
*/
    const char *s = "/*%2$c%3$cComment 1.%2$c*/%2$c%2$c#include <stdio.h>%2$c%2$c%2$cint main(void)%2$c{%2$c/*%2$c%3$cComment 2.%2$c*/%2$c%3$cconst char *s = %4$c%1$s%4$c;%2$c%3$cprintf(s, s, 10, 9, 34);%2$c%3$creturn (0);%2$c}";
    printf(s, s, 10, 9, 34);
    return (0);
}