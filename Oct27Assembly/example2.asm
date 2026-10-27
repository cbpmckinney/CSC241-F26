.data
outstr: .asciz "The sum of %i and %i is %i\n"
num1: .word 0x67
num2: .word 0x42
sum: .word 0x00


.text

.global main
main:
// accepts void, returns int

// put down a breadcrumb
stp x29, x30, [sp, #-16]!

// do the arithmetic 
ldr x4, =num1
ldr w0, [x4]
ldr x5, =num2
ldr w1, [x5]

add w2, w0, w1 // w2 <- w0 + w1

ldr x6, =sum
str w2, [x6]


// need to print
// outstr: "The sum of %i and %i is %i\n"
ldr x0, =outstr
ldr x1, =num1
ldr w1, [x1]
ldr x2, =num2
ldr w2, [x2]
ldr x3, =sum
ldr w3, [x3]
bl printf


// pick up the last breadcrumb
ldp x29, x30, [sp], #16
mov w0, #0
ret

