#include<stdio.h>

int main(void)
{
    char mystr[] = "Wabash";
    char *ptr = &mystr[0];

    int myarr[] = {0x12, 0x34, 0x56, 0x78};

    printf("First num is at %p\n", &myarr[0]);
    printf("ptr was: %p\n", &myarr[0]);
    printf("ptr+1 is: %p\n", &myarr[0]+1);

    for (int i = 0; i<4; i++)
    {
        printf("Num %i is 0x%x\n", i, myarr[i]);
    }


    /*
    printf("The first char is at %p\n", ptr);

    for (int i = 0; i<8; i++)
    {
        printf("%c\n", *(ptr+i));
    }
    for (int i = 0; i<8; i++)
    {
        printf("%c\n", mystr[i]);
    }
    */

    return 0;
}