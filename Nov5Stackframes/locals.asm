.data

.text

.global main
main:
stp x29, x30, [sp, #-16]!
mov fp, sp 
sub sp, sp, #16

mov w0, #0x67
str w0, [fp, #-4]

mov w0, #6
mov w1, #7
adds w2, w0, w1


add sp, sp, #16
ldp x29, x30, [sp], #16
mov w0, #0
ret