.data
num1: .word 0x40490FDB // approx pi
num2: .word 0x402DF84D // approx e
fmt: .asciz "num1 as float: %f; as int: %i\n"

.text
.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =num1
ldr s0, [x0]

fmov w1, s0

fcvt d0, s0



// printf(fmt, num1 as int, num1 as float);


ldr x0, =fmt
bl printf 


ldp x29, x30, [sp], #16
mov w0, #0
ret
