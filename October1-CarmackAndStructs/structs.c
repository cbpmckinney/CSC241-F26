#include <stdio.h>
#include <string.h>

int main(void)
{

    struct Student
    {
        char firstname[32];
        char lastname[32];
        int year;
        float gpa;
    };

    struct Student student1;
    
    student1.year = 2029;
    student1.gpa = 4.0F;
    
    strcpy(student1.firstname, "Bob");
    strcpy(student1.lastname, "Smith");

    printf("%s %s has GPA: %f\n", student1.firstname, student1.lastname, student1.gpa);
    printf("student1 is stored at: %p\n", &student1);

    return 0;
}