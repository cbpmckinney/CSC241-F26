#include<stdio.h>

typedef struct student 
{
    char name[12];
    int credits;
} Student;

void earn(Student s) {s.credits = s.credits + 3;}
void earn_ptr(Student *s) {s->credits = s->credits + 3;}

int main(void)
{

    Student w = {"Wally", 30};
    printf("%p\n", &w);
    earn(w);
    printf("%d\n", w.credits);

    earn_ptr(&w);
    printf("%d\n", w.credits);

    Student *q = &w;
    q->credits = 120;
    printf("%d %s\n", w.credits, q->name);
    

    return 0;
}