.data
str1: .asciz "Hello, world!\n"
str2: .asciz "The length is %i\n"
len1: .word 0x0
.text
.global main
main:
stp x29, x30, [sp, #-16]!
ldr x0, =str1
bl mystrlen
ldr x1, =len1
str w0, [x1]
ldr x0, =str1
bl printf
ldr x0, =str2
ldr x1, =len1
ldr w1, [x1]
bl printf


ldp x29, x30, [sp], #16
mov w0, #0
ret


// int mystrlen(char * ptr1)
// w0                 x0
// int len = 0;
.global mystrlen
mystrlen:

stp x29, x30, [sp, #-16]!
mov fp, sp
add sp, sp, #-16
mov w2, #0
str w2, [fp, #-4]


checkchar:
ldrb w1, [x0]
cbz w1, finished
add x0, x0, #1 //increment pointer
add w2, w2, #1 //increment counter
b checkchar


finished:
mov w0, w2

ldp x29, x30, [sp], #16
ret
