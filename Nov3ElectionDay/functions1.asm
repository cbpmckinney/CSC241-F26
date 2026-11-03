.data
str1: .asciz "Hello, world!"
str2: .asciz "aaaaaaaaaaaaa"

.text

.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =str1
ldr x1, =str2
bl uppercase

ldr x0, =str1
bl puts 
ldr x0, =str2
bl puts


ldp x29, x30, [sp], #16
mov w0, #0
ret

// void uppercase(char * str1, char * str2)
//                     x0          x1
.global uppercase
uppercase:
stp x29, x30, [sp, #-16]!
mov x2, #0


// load a letter
checkletter:
ldrb w3, [x0, x2]  // *(str1 + i)
// check if null terminator:
cbz w3, finished

// if char >= 0x61 && char <= 0x7a
// opposite of condition is <0x61 or >0x7a
cmp w3, #0x61
b.lt notlower 
cmp w3, #0x7a
b.gt notlower

islower:
sub w3, w3, #0x20

notlower:
strb w3, [x1, x2]

add x2, x2, #1
b checkletter
finished:
strb w3, [x1, x2]

ldp x29, x30, [sp], #16
ret 
