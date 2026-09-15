#include<stdio.h>

int main(void)
{
    int mynum = 0x12345678;
    int *myptr = &mynum;
    int **mypt2 = &myptr;
    // new: two operators
    // & is the "address of" pointer
    // given a variable x, &x returns the address of x.
    // * is the "dereference" operator
    // if y is a ptr, then *y says the value it points to


    printf("myptr's value is: %p\n", myptr);
    printf("mynum's value is: %i\n", mynum);
    printf("myptr2's value is: %p\n", mypt2);

    return 0;
}