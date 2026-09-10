#include<stdio.h>

int main(void)
{

    char mystring[] = "Wabash";
    char newstring[7];

    //printf("The string is at: %p\n", &mystring);
    //printf(mystring);
    //printf("The string is: %s", mystring);

    
    int i = 0;
    /*
    while(mystring[i] != '\0')
    {
        printf("%c", mystring[i]);
        i++;
    }
    */

    i = 0;
    while (mystring[i] != 0x00)
    {
        if ((mystring[i] >= 0x61) && (mystring[i] <= 0x7A))
        {
            newstring[i] = mystring[i] - 0x20;
        }
        else
        {
            newstring[i] = mystring[i];
        }
        i++;
    }
    newstring[i] = 0x00;

    printf("Original string is: %s\n", mystring);
    printf("New string is: %s\n", newstring);


    return 0;
}