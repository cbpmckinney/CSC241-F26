// bl function: pc+4 -> LR, then address of function -> PC
// ret: LR -> PC


.data
str1: .asciz "T(%i)=%i\n"
num: .word 0x05

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

// w0           w0 
// int triangle(int num)
// {
//      int n = num;
//      if (n == 1)
//      {
//          return 1;  
//      }
//      else
//      {
//          return n + triangle(n-1);
//      }
//
.global triangle
triangle:
stp x29, x30, [sp, #-16]!
mov fp, sp 
sub sp, sp, #16
str w0, [fp, #-4]

cmp w0, #1
b.gt reccase
basecase:
mov w0, #1
b exit

reccase:
sub w0, w0, #1
bl triangle
// after returning, w0 has T(n-1) in it.
// We need to compute n + T(n-1)
ldr w1, [fp, #-4]
add w0, w0, w1

exit:
add sp, sp, #16
ldp x29, x30, [sp], #16
ret

