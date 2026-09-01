#include<stdio.h>
#include<stdlib.h>

int main(void)
{
    long int myint = 67;
    float myflt = 6.7;
    float ans = myint + myflt;
    printf("ans is %f\n", ans);

    char mychar = 'W';
    char mystr[] = "WAF";

    printf("mychar is %c\n", mychar);
    printf("mystr is %s\n", mystr);

    return 0;

}