#include<stdio.h>

int mystrlen(char str[]);
int mystrlen2(char *ptr);

int main(void)
{
    printf("Please enter a string:\n");
    char mystr[16];
    scanf("%15[^\n]s", &mystr);


    int ans;
    ans = mystrlen(mystr);
    printf("The string has length: %i\n", ans);
    int ans2;
    ans2 = mystrlen2(&mystr[0]);
    // &mystr is a pointer to an array of chars
    // &mystr[0] is a pointer to a single char
    printf("The string has length: %i\n", ans2);

    return 0;
}

int mystrlen(char str[])  // this is the sugary version
{
    int count = 0;
    while(str[count] != '\0')
    {
        count++;
    }
    return count;
}

int mystrlen2(char *ptr)
{
    int count = 0;
    while(*(ptr+count) != '\0')
    {
        count++;
    }
    return count;
}
// Suppose: ptr = 0x67, and *ptr = 'W'
// *(ptr + 1): IDK because I don't know what's one mailbox after W's mailbox
// *ptr + 1: 'X'