#include<stdio.h>

int main(void)
{
    int mynum = 67;

    printf("mynum is located at: %p\n", &mynum);
    printf("mynum's value is: %i\n", mynum);

    return 0;
}