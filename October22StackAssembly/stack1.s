	.arch armv8-a
	.file	"stack1.c"
	.text
	.align	2
	.global	earn
	.type	earn, %function
earn:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldr	w0, [sp, 12]
	add	w0, w0, 3
	str	w0, [sp, 12]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	earn, .-earn
	.align	2
	.global	earn_ptr
	.type	earn_ptr, %function
earn_ptr:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	add	w1, w0, 3
	ldr	x0, [sp, 8]
	str	w1, [x0, 12]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	earn_ptr, .-earn_ptr
	.section	.rodata
	.align	3
.LC1:
	.string	"%p\n"
	.align	3
.LC2:
	.string	"%d\n"
	.align	3
.LC3:
	.string	"%d %s\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldr	w2, [x1]
	ldrh	w1, [x1, 4]
	str	w2, [x0]
	strh	w1, [x0, 4]
	str	wzr, [sp, 30]
	strh	wzr, [sp, 34]
	mov	w0, 30
	str	w0, [sp, 36]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 32]
	bl	earn
	ldr	w0, [sp, 36]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	bl	earn_ptr
	ldr	w0, [sp, 36]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	w1, 120
	str	w1, [x0, 12]
	ldr	w0, [sp, 36]
	ldr	x1, [sp, 40]
	mov	x2, x1
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"Wally"
	.zero	6
	.text
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
