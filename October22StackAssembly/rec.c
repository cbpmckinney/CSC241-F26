#include<stdio.h>

int factorial(int n)
{
    if (n == 1)
    {
        return 1;
    }
    else
    {
        return n * factorial(n-1);
    }
}



int main(void)
{
    int a = 5;
    int ans = factorial(a);

    printf("%d!=%d\n", a, ans);


    return 0;
}