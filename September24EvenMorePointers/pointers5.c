/*
Topics to discuss:
-String copying
-Memory allocation
-Argc/argv
-Structs
*/

#include<stdio.h>
#include<stdlib.h>

int mystrcopy(char * src, char * dest, int maxlen);

int main(void)
{
    char mystring[32] = "Wabash Always Fights!\n";
    
    // malloc: request a number of bytes, it gives you a pointer.
    char * myptr = malloc(32);
    if (myptr == NULL)
    {
        printf("Got a null pointer!\n");
    }
    else
    {
        printf("Pointer is %p\n", myptr);
    }
    // calloc takes number of objects and size per object
    char * myptr2 = calloc(32, 1);
        if (myptr2 == NULL)
    {
        printf("Got a null pointer!\n");
    }
    else
    {
        printf("Pointer is %p\n", myptr2);
    }
    int ans = mystrcopy(&mystring[0], myptr, 32);
    printf("The OG string was: %s\n", mystring);
    printf("The new string is: %s\n", myptr);



    free(myptr2);
    free(myptr);
    return 0;
}

int mystrcopy(char * src, char * dest, int maxlen)
{
    for (int i=0; i<maxlen; i++)
    {
        *(dest+i) = *(src + i);
        if (*(src +i) == 0x00) // or == '\0'
        {
            break;
        }
    }
    return 0;
}