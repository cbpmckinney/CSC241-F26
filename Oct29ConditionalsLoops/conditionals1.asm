.data 

num1: .word 0x67
num2: .word 0x67
str1: .asciz "The two numbers are equal"
str2: .asciz "The two numbers are not equal"

.text
.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =num1
ldr w0, [x0]

ldr x1, =num2
ldr w1, [x1]

// if (num1 == num2)
// { puts(str1); }
// else
// { puts(str2); }
//

cmp w0, w1
b.ne notequal

equal:
ldr x0, =str1
bl puts 
b finish

notequal:
ldr x0, =str2
bl puts

finish:




ldp x29, x30, [sp], #16
mov w0, #0 // not ldr w0, #0
ret 