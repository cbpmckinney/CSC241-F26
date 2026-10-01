#include <stdio.h>

float carmack(float number);

int main(void)
{
    float ans;
    float num = 2.0F;
    ans = carmack (num);



    return 0;
}

float carmack(float number)
{
    int i;
    float x2, y;
    const float threehalfs = 1.5F;

    x2 = number * 0.5F;
    y = number;

    i = * (int *) &y;
    i = 0x5f3759df - (i >> 1);
    y = * (float *) &i;
    
    printf("The estimation before Newton is: %f\n", y);

    y = y * (threehalfs - (x2 * y * y ));

    printf("The estimation after Newton1 is: %f\n", y);

        y = y * (threehalfs - (x2 * y * y ));

    printf("The estimation after Newton2 is: %f\n", y);

    return y;

}