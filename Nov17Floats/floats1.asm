.data
num1: .word 0x40490FDB // approx pi
num2: .word 0x402DF84D // approx e
fmt: .asciz "The sum of %f and %f is: %f\n"

.text
.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =num1
ldr s0, [x0]
ldr x0, =num2
ldr s1, [x0]

fadd s2, s0, s1

// printf(fmt, num1, num2, num1+num2);
//        x0   d0    d1    d2
// promote floats to doubles
fcvt d0, s0
fcvt d1, s1
fcvt d2, s2
ldr x0, =fmt
bl printf 


ldp x29, x30, [sp], #16
mov w0, #0
ret
