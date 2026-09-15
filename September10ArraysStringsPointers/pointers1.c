#include<stdio.h>

int main(void)
{
    int mynum = 0x12345678;

    printf("mynum is located at: %p\n", &mynum);
    printf("mynum's value is: %i\n", mynum);

    return 0;
}