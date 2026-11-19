.data

heat: .word 0x40B570A4 // 5.67
star: .word 0x0
five: .word 0x40A00000
str1: .asciz "Heat is: %1.2f.  Stars are: %i\n"
str2: .asciz "Heat is below five\n"
str3: .asciz "Heat is five\n"

.text
.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =heat
ldr s0, [x0]

fcvtzs w1, s0 // rounds down towards zero (like floor)
//fcvtps w1, s0 // rounds up always (like ceiling)
//fcvtas w1, s0 // rounds like usual: .5 and greater goes up
//fcvtns w1, s0 // rounds to even: 2.5 -> 2
ldr x0, =str1
fcvt d0, s0
bl printf

ldr x0, =heat
ldr s0, [x0]
ldr x1, =five
ldr s1, [x1]

fcmp s0, s1
b.ge fiveorup

lessthanfive:
ldr x0, =str2
bl printf 
b finish

fiveorup:
ldr x0, =heat
str s1, [x0]
ldr x0, =str3
bl printf

finish:
ldr x0, =heat
ldr s0, [x0]

fcvtzs w1, s0 // rounds down towards zero (like floor)
//fcvtps w1, s0 // rounds up always (like ceiling)
//fcvtas w1, s0 // rounds like usual: .5 and greater goes up
//fcvtns w1, s0 // rounds to even: 2.5 -> 2
ldr x0, =str1
fcvt d0, s0
bl printf


ldp x29, x30, [sp], #16
mov w0, #0
ret

