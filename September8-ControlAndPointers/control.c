#include<stdio.h>

int main(void)
{
    int money = 19;

    // This is a comment

    /*
    This is a multi line comment
    */

    if (money < 20)
    {
        printf("You broke\n");
    }
    else
    {
        printf("You rich with %i dollars!", money);
    }

    for(int i = 0; i < 5; i++)
    {
        printf("%i bottles of beer on the wall\n", i);
    }
    for(int i = 0; i < 5; i++)
    {
        printf("Now I'm hungry\n");
    }

    int beer = 6;
    while (beer > 0)
    {
        printf("Drinking a beer...\n");
        beer--;
    }
    int counter = 0;
    do
    {
        printf("Testing\n");
        counter--;
    } while (counter >0);


    return 0;
}