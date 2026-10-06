#include<stdio.h>


int main(void)
{

    float myfloat = 6.7F;

    printf("myfloat is %f\n", myfloat);
    
    float flt1;
    double dub1;

    printf("Please enter a float:\n");
    scanf("%f", &flt1);

    printf("Please enter a double:\n");
    scanf("%lf", &dub1);

    printf("The float is %f\n", flt1);
    printf("The double is %lf\n", dub1);



    return 0;
}