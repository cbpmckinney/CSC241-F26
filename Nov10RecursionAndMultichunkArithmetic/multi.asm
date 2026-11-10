.data

.text

.global main
main:
stp x29, x30, [sp, #-16]!
mov fp, sp 

sub sp, sp, #16
mov x0, #0x00
str x0, [fp, #-8]
// int flags = 0;

mrs x0, NZCV
str x0, [fp, #-8]

mov x0, #0x67
msr NZCV, x0






add sp, sp, #16
ldp x29, x30, [sp], #16
mov w0, #0
ret