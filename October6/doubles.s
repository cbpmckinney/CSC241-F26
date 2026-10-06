	.arch armv8-a
	.file	"doubles.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"myfloat is %f\n"
	.align	3
.LC1:
	.string	"Please enter a float:"
	.align	3
.LC2:
	.string	"%f"
	.align	3
.LC3:
	.string	"Please enter a double:"
	.align	3
.LC4:
	.string	"%lf"
	.align	3
.LC5:
	.string	"The float is %f\n"
	.align	3
.LC6:
	.string	"The double is %lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 26214
	movk	w0, 0x40d6, lsl 16
	fmov	s31, w0
	str	s31, [sp, 28]
	ldr	s31, [sp, 28]
	fcvt	d31, s31
	fmov	d0, d31
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	ldr	s31, [sp, 24]
	fcvt	d31, s31
	fmov	d0, d31
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	d31, [sp, 16]
	fmov	d0, d31
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
