.data
str1: .asciz "T(%i)=%i\n"
num: .word 0x03

.text

.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =num
ldr w0, [x0]
bl triangle

mov w2, w0
ldr x1, =num
ldr w1, [x1]
ldr x0, =str1
bl printf



ldp x29, x30, [sp], #16
mov w0, #0
ret

// int triangle(int n)
// w0           w0 
.global triangle
triangle:

stp x29, x30, [sp, #-16]!




ldp x29, x30, [sp], #16
ret
