.data
world: .asciz "Hello, world!\n"


.text

.global main
main:
// accepts void, returns int

// put down a breadcrumb
stp x29, x30, [sp, #-16]!

// print the string
// in C: puts(hello);

ldr x0, =world
bl puts 

// pick up the last breadcrumb
ldp x29, x30, [sp], #16
mov w0, #0
ret

