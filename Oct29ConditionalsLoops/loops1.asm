.data
numbeers: .word 3

str1: .asciz "%i beers; drink one.\n"

.text
.global main
main:
stp x29, x30, [sp, #-16]!

ldr x1, =numbeers
ldr w1, [x1]

checkbeers:
cbz w1, nobeers

ldr x0, =str1
// x0 has address of string, w1 has numbeers
bl printf
// printf is not obligated to preserve registers x0, w1
ldr x2, =numbeers
ldr w1, [x2]
sub w1, w1, #1
str w1, [x2]

b checkbeers
//         x0      w1
// printf(str1, numbeers)



nobeers:


ldp x29, x30, [sp], #16
mov w0, #0
ret

