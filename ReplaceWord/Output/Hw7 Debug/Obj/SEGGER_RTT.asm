	.cpu cortex-a9
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"SEGGER_RTT.c"
	.text
.Ltext0:
	.section	.data._aTerminalId,"aw"
	.align	2
	.type	_aTerminalId, %object
	.size	_aTerminalId, 16
_aTerminalId:
	.ascii	"0123456789ABCDEF"
	.global	_SEGGER_RTT
	.section	.bss._SEGGER_RTT,"aw",%nobits
	.align	2
	.type	_SEGGER_RTT, %object
	.size	_SEGGER_RTT, 120
_SEGGER_RTT:
	.space	120
	.section	.bss._acUpBuffer,"aw",%nobits
	.align	2
	.type	_acUpBuffer, %object
	.size	_acUpBuffer, 1024
_acUpBuffer:
	.space	1024
	.section	.bss._acDownBuffer,"aw",%nobits
	.align	2
	.type	_acDownBuffer, %object
	.size	_acDownBuffer, 16
_acDownBuffer:
	.space	16
	.section	.bss._ActiveTerminal,"aw",%nobits
	.type	_ActiveTerminal, %object
	.size	_ActiveTerminal, 1
_ActiveTerminal:
	.space	1
	.section .rodata
	.align	2
.LC0:
	.ascii	"Terminal\000"
	.align	2
.LC1:
	.ascii	"RTT\000"
	.align	2
.LC2:
	.ascii	"SEGGER\000"
	.section	.text._DoInit,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_DoInit, %function
_DoInit:
.LFB0:
	.file 1 "C:\\Users\\mattf\\Documents\\SEGGER Embedded Studio for ARM Projects\\Hw7\\SEGGER\\SEGGER_RTT.c"
	.loc 1 264 27
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	.loc 1 269 5
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	str	r3, [sp, #4]
	.loc 1 270 25
	ldr	r3, [sp, #4]
	mov	r2, #2
	str	r2, [r3, #16]
	.loc 1 271 25
	ldr	r3, [sp, #4]
	mov	r2, #2
	str	r2, [r3, #20]
	.loc 1 275 27
	ldr	r2, [sp, #4]
	movw	r3, #:lower16:.LC0
	movt	r3, #:upper16:.LC0
	str	r3, [r2, #24]
	.loc 1 276 27
	ldr	r2, [sp, #4]
	movw	r3, #:lower16:_acUpBuffer
	movt	r3, #:upper16:_acUpBuffer
	str	r3, [r2, #28]
	.loc 1 277 27
	ldr	r3, [sp, #4]
	mov	r2, #1024
	str	r2, [r3, #32]
	.loc 1 278 27
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #40]
	.loc 1 279 27
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #36]
	.loc 1 280 27
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #44]
	.loc 1 284 29
	ldr	r2, [sp, #4]
	movw	r3, #:lower16:.LC0
	movt	r3, #:upper16:.LC0
	str	r3, [r2, #72]
	.loc 1 285 29
	ldr	r2, [sp, #4]
	movw	r3, #:lower16:_acDownBuffer
	movt	r3, #:upper16:_acDownBuffer
	str	r3, [r2, #76]
	.loc 1 286 29
	ldr	r3, [sp, #4]
	mov	r2, #16
	str	r2, [r3, #80]
	.loc 1 287 29
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #88]
	.loc 1 288 29
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #84]
	.loc 1 289 29
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #92]
	.loc 1 295 3
	ldr	r3, [sp, #4]
	add	r3, r3, #7
	movw	r1, #:lower16:.LC1
	movt	r1, #:upper16:.LC1
	mov	r0, r3
	bl	strcpy
	.loc 1 296 3
	ldr	r3, [sp, #4]
	movw	r1, #:lower16:.LC2
	movt	r1, #:upper16:.LC2
	mov	r0, r3
	bl	strcpy
	.loc 1 297 14
	ldr	r3, [sp, #4]
	mov	r2, #32
	strb	r2, [r3, #6]
	.loc 1 298 1
	nop
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE0:
	.size	_DoInit, .-_DoInit
	.section	.text._WriteBlocking,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_WriteBlocking, %function
_WriteBlocking:
.LFB1:
	.loc 1 319 101
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI3:
	sub	sp, sp, #36
.LCFI4:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 330 19
	mov	r3, #0
	str	r3, [sp, #24]
	.loc 1 331 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	str	r3, [sp, #20]
.L6:
	.loc 1 333 11
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	str	r3, [sp, #16]
	.loc 1 334 8
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L3
	.loc 1 335 31
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	sub	r3, r2, r3
	.loc 1 335 23
	sub	r3, r3, #1
	str	r3, [sp, #28]
	b	.L4
.L3:
	.loc 1 337 30
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	.loc 1 337 62
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #20]
	sub	r3, r1, r3
	.loc 1 337 45
	add	r3, r2, r3
	.loc 1 337 23
	sub	r3, r3, #1
	str	r3, [sp, #28]
.L4:
	.loc 1 339 23
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [sp, #20]
	sub	r3, r2, r3
	.loc 1 339 21
	ldr	r2, [sp, #28]
	cmp	r2, r3
	movcc	r3, r2
	movcs	r3, r3
	str	r3, [sp, #28]
	.loc 1 340 21
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	movcc	r3, r2
	movcs	r3, r3
	str	r3, [sp, #28]
	.loc 1 350 5
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 1 351 21
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 352 21
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 353 21
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #28]
	sub	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 354 21
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 356 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 356 8
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bne	.L5
	.loc 1 357 13
	mov	r3, #0
	str	r3, [sp, #20]
.L5:
	.loc 1 359 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
	.loc 1 360 3
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L6
	.loc 1 362 10
	ldr	r3, [sp, #24]
	.loc 1 363 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.LFE1:
	.size	_WriteBlocking, .-_WriteBlocking
	.section	.text._WriteNoCheck,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_WriteNoCheck, %function
_WriteNoCheck:
.LFB2:
	.loc 1 383 94
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI6:
	sub	sp, sp, #36
.LCFI7:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 391 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	str	r3, [sp, #28]
	.loc 1 392 14
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	.loc 1 392 7
	ldr	r3, [sp, #28]
	sub	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 393 6
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bls	.L9
	.loc 1 405 5
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #28]
	add	r3, r2, r3
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 1 406 26
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	.loc 1 406 18
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
	.loc 1 432 1
	b	.L11
.L9:
	.loc 1 425 20
	ldr	r3, [sp, #24]
	str	r3, [sp, #20]
	.loc 1 426 5
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #28]
	add	r3, r2, r3
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 1 427 20
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	sub	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 428 5
	ldr	r3, [sp, #12]
	ldr	r0, [r3, #4]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	add	r3, r2, r3
	ldr	r2, [sp, #20]
	mov	r1, r3
	bl	memcpy
	.loc 1 429 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
.L11:
	.loc 1 432 1
	nop
	add	sp, sp, #36
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.LFE2:
	.size	_WriteNoCheck, .-_WriteNoCheck
	.section	.text._PostTerminalSwitch,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_PostTerminalSwitch, %function
_PostTerminalSwitch:
.LFB3:
	.loc 1 447 88
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI9:
	sub	sp, sp, #20
.LCFI10:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 450 9
	mvn	r3, #0
	strb	r3, [sp, #12]
	.loc 1 451 23
	ldrb	r2, [sp, #3]	@ zero_extendqisi2
	movw	r3, #:lower16:_aTerminalId
	movt	r3, #:upper16:_aTerminalId
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	.loc 1 451 9
	strb	r3, [sp, #13]
	.loc 1 452 3
	add	r3, sp, #12
	mov	r2, #2
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	_WriteBlocking
	.loc 1 453 1
	nop
	add	sp, sp, #20
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.LFE3:
	.size	_PostTerminalSwitch, .-_PostTerminalSwitch
	.section	.text._GetAvailWriteSpace,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_GetAvailWriteSpace, %function
_GetAvailWriteSpace:
.LFB4:
	.loc 1 469 66
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI12:
	str	r0, [sp, #4]
	.loc 1 477 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	str	r3, [sp, #16]
	.loc 1 478 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	str	r3, [sp, #12]
	.loc 1 479 6
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bhi	.L14
	.loc 1 480 14
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #8]
	.loc 1 480 34
	ldr	r3, [sp, #12]
	sub	r2, r2, r3
	.loc 1 480 42
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	.loc 1 480 7
	sub	r3, r3, #1
	str	r3, [sp, #20]
	b	.L15
.L14:
	.loc 1 482 15
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #12]
	sub	r3, r2, r3
	.loc 1 482 7
	sub	r3, r3, #1
	str	r3, [sp, #20]
.L15:
	.loc 1 484 10
	ldr	r3, [sp, #20]
	.loc 1 485 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI13:
	@ sp needed
	bx	lr
.LFE4:
	.size	_GetAvailWriteSpace, .-_GetAvailWriteSpace
	.section	.text.SEGGER_RTT_ReadNoLock,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_ReadNoLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_ReadNoLock, %function
SEGGER_RTT_ReadNoLock:
.LFB5:
	.loc 1 510 88
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI14:
	sub	sp, sp, #44
.LCFI15:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 521 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L18
	.loc 1 521 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L18:
	.loc 1 522 9 is_stmt 1
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r2, r3, #72
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	add	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 523 11
	ldr	r3, [sp, #8]
	str	r3, [sp, #28]
	.loc 1 524 9
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #16]
	str	r3, [sp, #32]
	.loc 1 525 9
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #12]
	str	r3, [sp, #20]
	.loc 1 526 16
	mov	r3, #0
	str	r3, [sp, #36]
	.loc 1 530 6
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L19
	.loc 1 531 24
	ldr	r3, [sp, #24]
	ldr	r2, [r3, #8]
	.loc 1 531 17
	ldr	r3, [sp, #32]
	sub	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 532 17
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	movcc	r3, r2
	movcs	r3, r3
	str	r3, [sp, #16]
	.loc 1 542 5
	ldr	r3, [sp, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #32]
	add	r3, r2, r3
	ldr	r2, [sp, #16]
	mov	r1, r3
	ldr	r0, [sp, #28]
	bl	memcpy
	.loc 1 543 18
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	str	r3, [sp, #36]
	.loc 1 544 18
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 545 18
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #16]
	sub	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 546 18
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	str	r3, [sp, #32]
	.loc 1 551 23
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #8]
	.loc 1 551 8
	ldr	r2, [sp, #32]
	cmp	r2, r3
	bne	.L19
	.loc 1 552 13
	mov	r3, #0
	str	r3, [sp, #32]
.L19:
	.loc 1 558 15
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #32]
	sub	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 559 15
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	movcc	r3, r2
	movcs	r3, r3
	str	r3, [sp, #16]
	.loc 1 560 6
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L20
	.loc 1 570 5
	ldr	r3, [sp, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #32]
	add	r3, r2, r3
	ldr	r2, [sp, #16]
	mov	r1, r3
	ldr	r0, [sp, #28]
	bl	memcpy
	.loc 1 571 18
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	str	r3, [sp, #36]
	.loc 1 572 18
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 573 18
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #16]
	sub	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 574 18
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	str	r3, [sp, #32]
.L20:
	.loc 1 577 6
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L21
	.loc 1 578 18
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #32]
	str	r2, [r3, #16]
.L21:
	.loc 1 581 10
	ldr	r3, [sp, #36]
	.loc 1 582 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI16:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	SEGGER_RTT_ReadNoLock, .-SEGGER_RTT_ReadNoLock
	.section	.text.SEGGER_RTT_Read,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_Read
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_Read, %function
SEGGER_RTT_Read:
.LFB6:
	.loc 1 600 84
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI17:
	sub	sp, sp, #28
.LCFI18:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB2:
	.loc 1 603 3
	.syntax divided
@ 603 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #20]
	.loc 1 607 18
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	SEGGER_RTT_ReadNoLock
	str	r0, [sp, #16]
	.loc 1 611 3
	ldr	r3, [sp, #20]
	.syntax divided
@ 611 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE2:
	.loc 1 613 10
	ldr	r3, [sp, #16]
	.loc 1 614 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI19:
	@ sp needed
	ldr	pc, [sp], #4
.LFE6:
	.size	SEGGER_RTT_Read, .-SEGGER_RTT_Read
	.section	.text.SEGGER_RTT_WriteWithOverwriteNoLock,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_WriteWithOverwriteNoLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_WriteWithOverwriteNoLock, %function
SEGGER_RTT_WriteWithOverwriteNoLock:
.LFB7:
	.loc 1 639 104
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI20:
	sub	sp, sp, #36
.LCFI21:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 647 9
	ldr	r3, [sp, #8]
	str	r3, [sp, #28]
	.loc 1 651 9
	ldr	r3, [sp, #12]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 655 12
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #12]
	.loc 1 655 28
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #16]
	.loc 1 655 6
	cmp	r2, r3
	bne	.L26
	.loc 1 656 18
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 656 11
	sub	r3, r3, #1
	str	r3, [sp, #24]
	b	.L27
.L26:
	.loc 1 657 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #12]
	.loc 1 657 35
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #16]
	.loc 1 657 13
	cmp	r2, r3
	bcs	.L28
	.loc 1 658 18
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 658 33
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 658 26
	sub	r3, r2, r3
	.loc 1 658 11
	sub	r3, r3, #1
	str	r3, [sp, #24]
	b	.L27
.L28:
	.loc 1 660 18
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 660 33
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 660 26
	sub	r2, r2, r3
	.loc 1 660 53
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 660 46
	add	r3, r2, r3
	.loc 1 660 11
	sub	r3, r3, #1
	str	r3, [sp, #24]
.L27:
	.loc 1 662 6
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bls	.L29
	.loc 1 663 18
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 663 31
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #24]
	sub	r3, r1, r3
	.loc 1 663 18
	add	r2, r2, r3
	ldr	r3, [sp, #20]
	str	r2, [r3, #16]
	.loc 1 664 11
	b	.L30
.L31:
	.loc 1 665 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 665 28
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 665 20
	sub	r2, r2, r3
	ldr	r3, [sp, #20]
	str	r2, [r3, #16]
.L30:
	.loc 1 664 17
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #16]
	.loc 1 664 33
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 664 11
	cmp	r2, r3
	bcs	.L31
.L29:
	.loc 1 671 16
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #8]
	.loc 1 671 38
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	.loc 1 671 9
	sub	r3, r2, r3
	str	r3, [sp, #24]
.L34:
	.loc 1 673 8
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bls	.L32
	.loc 1 685 7
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	add	r3, r2, r3
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #28]
	mov	r0, r3
	bl	memcpy
	.loc 1 686 20
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r3, [sp, #20]
	str	r2, [r3, #12]
	.loc 1 688 7
	b	.L33
.L32:
	.loc 1 701 7
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #12]
	add	r3, r2, r3
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #28]
	mov	r0, r3
	bl	memcpy
	.loc 1 702 13
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	add	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 703 20
	ldr	r3, [sp, #20]
	mov	r2, #0
	str	r2, [r3, #12]
	.loc 1 704 16
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	sub	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 706 21
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #8]
	.loc 1 706 13
	sub	r3, r3, #1
	str	r3, [sp, #24]
	.loc 1 708 3
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L34
	.loc 1 709 1
	nop
.L33:
	nop
	add	sp, sp, #36
.LCFI22:
	@ sp needed
	ldr	pc, [sp], #4
.LFE7:
	.size	SEGGER_RTT_WriteWithOverwriteNoLock, .-SEGGER_RTT_WriteWithOverwriteNoLock
	.section	.text.SEGGER_RTT_WriteSkipNoLock,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_WriteSkipNoLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_WriteSkipNoLock, %function
SEGGER_RTT_WriteSkipNoLock:
.LFB8:
	.loc 1 735 99
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI23:
	sub	sp, sp, #44
.LCFI24:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 746 9
	ldr	r3, [sp, #8]
	str	r3, [sp, #36]
	.loc 1 750 9
	ldr	r3, [sp, #12]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	add	r3, r3, r2
	str	r3, [sp, #32]
	.loc 1 751 9
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #16]
	str	r3, [sp, #28]
	.loc 1 752 9
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #12]
	str	r3, [sp, #24]
	.loc 1 766 6
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bhi	.L36
	.loc 1 770 18
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #8]
	.loc 1 770 38
	ldr	r3, [sp, #24]
	sub	r3, r2, r3
	.loc 1 770 11
	sub	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 771 8
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L37
	.loc 1 780 7
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #24]
	add	r3, r2, r3
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #36]
	mov	r0, r3
	bl	memcpy
	.loc 1 781 28
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	.loc 1 781 20
	ldr	r3, [sp, #32]
	str	r2, [r3, #12]
	.loc 1 783 14
	mov	r3, #1
	b	.L38
.L37:
	.loc 1 788 11
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 792 8
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L39
	.loc 1 796 18
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #8]
	.loc 1 796 11
	ldr	r3, [sp, #24]
	sub	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 797 10
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bls	.L40
	.loc 1 806 9
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #24]
	add	r3, r2, r3
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #36]
	mov	r0, r3
	bl	memcpy
	.loc 1 807 30
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	.loc 1 807 22
	ldr	r3, [sp, #32]
	str	r2, [r3, #12]
	b	.L41
.L40:
	.loc 1 826 9
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #24]
	add	r3, r2, r3
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #36]
	mov	r0, r3
	bl	memcpy
	.loc 1 827 9
	ldr	r3, [sp, #32]
	ldr	r0, [r3, #4]
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #16]
	add	r1, r2, r3
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #16]
	sub	r3, r2, r3
	mov	r2, r3
	bl	memcpy
	.loc 1 828 33
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #16]
	sub	r2, r2, r3
	.loc 1 828 22
	ldr	r3, [sp, #32]
	str	r2, [r3, #12]
.L41:
	.loc 1 831 14
	mov	r3, #1
	b	.L38
.L36:
	.loc 1 834 19
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	sub	r3, r2, r3
	.loc 1 834 11
	sub	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 835 8
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L39
	.loc 1 844 7
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #24]
	add	r3, r2, r3
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #36]
	mov	r0, r3
	bl	memcpy
	.loc 1 845 28
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	.loc 1 845 20
	ldr	r3, [sp, #32]
	str	r2, [r3, #12]
	.loc 1 847 14
	mov	r3, #1
	b	.L38
.L39:
	.loc 1 853 10
	mov	r3, #0
.L38:
	.loc 1 854 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI25:
	@ sp needed
	ldr	pc, [sp], #4
.LFE8:
	.size	SEGGER_RTT_WriteSkipNoLock, .-SEGGER_RTT_WriteSkipNoLock
	.section	.text.SEGGER_RTT_WriteNoLock,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_WriteNoLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_WriteNoLock, %function
SEGGER_RTT_WriteNoLock:
.LFB9:
	.loc 1 879 95
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI26:
	sub	sp, sp, #36
.LCFI27:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 885 9
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 1 889 9
	ldr	r3, [sp, #12]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 893 16
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #20]
	.loc 1 893 3
	cmp	r3, #2
	beq	.L43
	cmp	r3, #2
	bhi	.L44
	cmp	r3, #0
	beq	.L45
	cmp	r3, #1
	beq	.L46
	b	.L44
.L45:
	.loc 1 899 13
	ldr	r0, [sp, #20]
	bl	_GetAvailWriteSpace
	str	r0, [sp, #16]
	.loc 1 900 8
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcs	.L47
	.loc 1 901 14
	mov	r3, #0
	str	r3, [sp, #28]
	.loc 1 906 5
	b	.L49
.L47:
	.loc 1 903 14
	ldr	r3, [sp, #4]
	str	r3, [sp, #28]
	.loc 1 904 7
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #20]
	bl	_WriteNoCheck
	.loc 1 906 5
	b	.L49
.L46:
	.loc 1 911 13
	ldr	r0, [sp, #20]
	bl	_GetAvailWriteSpace
	str	r0, [sp, #16]
	.loc 1 912 12
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	movcc	r3, r2
	movcs	r3, r3
	str	r3, [sp, #28]
	.loc 1 913 5
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #20]
	bl	_WriteNoCheck
	.loc 1 914 5
	b	.L49
.L43:
	.loc 1 919 14
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #20]
	bl	_WriteBlocking
	str	r0, [sp, #28]
	.loc 1 920 5
	b	.L49
.L44:
	.loc 1 922 12
	mov	r3, #0
	str	r3, [sp, #28]
	.loc 1 923 5
	nop
.L49:
	.loc 1 928 10
	ldr	r3, [sp, #28]
	.loc 1 929 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI28:
	@ sp needed
	ldr	pc, [sp], #4
.LFE9:
	.size	SEGGER_RTT_WriteNoLock, .-SEGGER_RTT_WriteNoLock
	.section	.text.SEGGER_RTT_Write,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_Write
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_Write, %function
SEGGER_RTT_Write:
.LFB10:
	.loc 1 950 89
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI29:
	sub	sp, sp, #28
.LCFI30:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 953 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L52
	.loc 1 953 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L52:
.LBB3:
	.loc 1 954 3 is_stmt 1
	.syntax divided
@ 954 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #20]
	.loc 1 958 12
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	SEGGER_RTT_WriteNoLock
	str	r0, [sp, #16]
	.loc 1 962 3
	ldr	r3, [sp, #20]
	.syntax divided
@ 962 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE3:
	.loc 1 964 10
	ldr	r3, [sp, #16]
	.loc 1 965 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI31:
	@ sp needed
	ldr	pc, [sp], #4
.LFE10:
	.size	SEGGER_RTT_Write, .-SEGGER_RTT_Write
	.section	.text.SEGGER_RTT_WriteString,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_WriteString
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_WriteString, %function
SEGGER_RTT_WriteString:
.LFB11:
	.loc 1 987 70
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI32:
	sub	sp, sp, #20
.LCFI33:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 990 9
	ldr	r0, [sp]
	bl	strlen
	str	r0, [sp, #12]
	.loc 1 991 10
	ldr	r2, [sp, #12]
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	SEGGER_RTT_Write
	mov	r3, r0
	.loc 1 992 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI34:
	@ sp needed
	ldr	pc, [sp], #4
.LFE11:
	.size	SEGGER_RTT_WriteString, .-SEGGER_RTT_WriteString
	.section	.text.SEGGER_RTT_PutCharSkipNoLock,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_PutCharSkipNoLock
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_PutCharSkipNoLock, %function
SEGGER_RTT_PutCharSkipNoLock:
.LFB12:
	.loc 1 1017 69
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI35:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 1024 9
	ldr	r3, [sp, #4]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 1028 16
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1028 9
	add	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 1029 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 1029 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bne	.L57
	.loc 1 1030 11
	mov	r3, #0
	str	r3, [sp, #20]
.L57:
	.loc 1 1035 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 1035 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L58
	.loc 1 1036 10
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 1036 25
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 1036 19
	add	r3, r2, r3
	.loc 1 1036 34
	ldrb	r2, [sp, #3]
	strb	r2, [r3]
	.loc 1 1037 18
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
	.loc 1 1038 12
	mov	r3, #1
	str	r3, [sp, #16]
	b	.L59
.L58:
	.loc 1 1040 12
	mov	r3, #0
	str	r3, [sp, #16]
.L59:
	.loc 1 1043 10
	ldr	r3, [sp, #16]
	.loc 1 1044 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI36:
	@ sp needed
	bx	lr
.LFE12:
	.size	SEGGER_RTT_PutCharSkipNoLock, .-SEGGER_RTT_PutCharSkipNoLock
	.section	.text.SEGGER_RTT_PutCharSkip,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_PutCharSkip
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_PutCharSkip, %function
SEGGER_RTT_PutCharSkip:
.LFB13:
	.loc 1 1064 63
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI37:
	sub	sp, sp, #28
.LCFI38:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 1071 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L62
	.loc 1 1071 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L62:
.LBB4:
	.loc 1 1072 3 is_stmt 1
	.syntax divided
@ 1072 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #12]
	.loc 1 1076 9
	ldr	r3, [sp, #4]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	add	r3, r3, r2
	str	r3, [sp, #8]
	.loc 1 1080 16
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 1080 9
	add	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 1081 21
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #8]
	.loc 1 1081 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bne	.L63
	.loc 1 1082 11
	mov	r3, #0
	str	r3, [sp, #20]
.L63:
	.loc 1 1087 21
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #16]
	.loc 1 1087 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L64
	.loc 1 1088 10
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #4]
	.loc 1 1088 25
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 1088 19
	add	r3, r2, r3
	.loc 1 1088 34
	ldrb	r2, [sp, #3]
	strb	r2, [r3]
	.loc 1 1089 18
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
	.loc 1 1090 12
	mov	r3, #1
	str	r3, [sp, #16]
	b	.L65
.L64:
	.loc 1 1092 12
	mov	r3, #0
	str	r3, [sp, #16]
.L65:
	.loc 1 1097 3
	ldr	r3, [sp, #12]
	.syntax divided
@ 1097 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE4:
	.loc 1 1099 10
	ldr	r3, [sp, #16]
	.loc 1 1100 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI39:
	@ sp needed
	ldr	pc, [sp], #4
.LFE13:
	.size	SEGGER_RTT_PutCharSkip, .-SEGGER_RTT_PutCharSkip
	.section	.text.SEGGER_RTT_PutChar,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_PutChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_PutChar, %function
SEGGER_RTT_PutChar:
.LFB14:
	.loc 1 1120 59
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI40:
	sub	sp, sp, #28
.LCFI41:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 1127 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L68
	.loc 1 1127 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L68:
.LBB5:
	.loc 1 1128 3 is_stmt 1
	.syntax divided
@ 1128 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #12]
	.loc 1 1132 9
	ldr	r3, [sp, #4]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	add	r3, r3, r2
	str	r3, [sp, #8]
	.loc 1 1136 16
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 1136 9
	add	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 1137 21
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #8]
	.loc 1 1137 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bne	.L69
	.loc 1 1138 11
	mov	r3, #0
	str	r3, [sp, #20]
.L69:
	.loc 1 1143 12
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #20]
	.loc 1 1143 6
	cmp	r3, #2
	bne	.L70
	.loc 1 1144 11
	nop
.L71:
	.loc 1 1144 26 discriminator 1
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #16]
	.loc 1 1144 11 discriminator 1
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L71
.L70:
	.loc 1 1151 21
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #16]
	.loc 1 1151 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L72
	.loc 1 1152 10
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #4]
	.loc 1 1152 25
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	.loc 1 1152 19
	add	r3, r2, r3
	.loc 1 1152 34
	ldrb	r2, [sp, #3]
	strb	r2, [r3]
	.loc 1 1153 18
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
	.loc 1 1154 12
	mov	r3, #1
	str	r3, [sp, #16]
	b	.L73
.L72:
	.loc 1 1156 12
	mov	r3, #0
	str	r3, [sp, #16]
.L73:
	.loc 1 1161 3
	ldr	r3, [sp, #12]
	.syntax divided
@ 1161 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE5:
	.loc 1 1163 10
	ldr	r3, [sp, #16]
	.loc 1 1164 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI42:
	@ sp needed
	ldr	pc, [sp], #4
.LFE14:
	.size	SEGGER_RTT_PutChar, .-SEGGER_RTT_PutChar
	.section	.text.SEGGER_RTT_GetKey,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_GetKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_GetKey, %function
SEGGER_RTT_GetKey:
.LFB15:
	.loc 1 1181 29
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI43:
	sub	sp, sp, #12
.LCFI44:
	.loc 1 1185 12
	add	r3, sp, #3
	mov	r2, #1
	mov	r1, r3
	mov	r0, #0
	bl	SEGGER_RTT_Read
	mov	r3, r0
	.loc 1 1185 5
	str	r3, [sp, #4]
	.loc 1 1186 6
	ldr	r3, [sp, #4]
	cmp	r3, #1
	bne	.L76
	.loc 1 1187 9
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	.loc 1 1187 7
	str	r3, [sp, #4]
	b	.L77
.L76:
	.loc 1 1189 7
	mvn	r3, #0
	str	r3, [sp, #4]
.L77:
	.loc 1 1191 10
	ldr	r3, [sp, #4]
	.loc 1 1192 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI45:
	@ sp needed
	ldr	pc, [sp], #4
.LFE15:
	.size	SEGGER_RTT_GetKey, .-SEGGER_RTT_GetKey
	.section	.text.SEGGER_RTT_WaitKey,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_WaitKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_WaitKey, %function
SEGGER_RTT_WaitKey:
.LFB16:
	.loc 1 1209 30
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI46:
	sub	sp, sp, #12
.LCFI47:
.L80:
	.loc 1 1213 9 discriminator 1
	bl	SEGGER_RTT_GetKey
	str	r0, [sp, #4]
	.loc 1 1214 3 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L80
	.loc 1 1215 10
	ldr	r3, [sp, #4]
	.loc 1 1216 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI48:
	@ sp needed
	ldr	pc, [sp], #4
.LFE16:
	.size	SEGGER_RTT_WaitKey, .-SEGGER_RTT_WaitKey
	.section	.text.SEGGER_RTT_HasKey,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_HasKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_HasKey, %function
SEGGER_RTT_HasKey:
.LFB17:
	.loc 1 1232 29
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI49:
	sub	sp, sp, #12
.LCFI50:
	.loc 1 1236 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L83
	.loc 1 1236 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L83:
	.loc 1 1237 9 is_stmt 1
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #88]
	str	r3, [sp]
	.loc 1 1238 36
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #84]
	.loc 1 1238 6
	ldr	r2, [sp]
	cmp	r2, r3
	beq	.L84
	.loc 1 1239 7
	mov	r3, #1
	str	r3, [sp, #4]
	b	.L85
.L84:
	.loc 1 1241 7
	mov	r3, #0
	str	r3, [sp, #4]
.L85:
	.loc 1 1243 10
	ldr	r3, [sp, #4]
	.loc 1 1244 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI51:
	@ sp needed
	ldr	pc, [sp], #4
.LFE17:
	.size	SEGGER_RTT_HasKey, .-SEGGER_RTT_HasKey
	.section	.text.SEGGER_RTT_HasData,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_HasData
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_HasData, %function
SEGGER_RTT_HasData:
.LFB18:
	.loc 1 1258 51
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI52:
	str	r0, [sp, #4]
	.loc 1 1262 9
	ldr	r2, [sp, #4]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r2, r3, #72
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	add	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 1263 5
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	str	r3, [sp, #8]
	.loc 1 1264 19
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 1264 12
	ldr	r2, [sp, #8]
	sub	r3, r2, r3
	.loc 1 1265 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI53:
	@ sp needed
	bx	lr
.LFE18:
	.size	SEGGER_RTT_HasData, .-SEGGER_RTT_HasData
	.section	.text.SEGGER_RTT_HasDataUp,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_HasDataUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_HasDataUp, %function
SEGGER_RTT_HasDataUp:
.LFB19:
	.loc 1 1279 53
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI54:
	str	r0, [sp, #4]
	.loc 1 1283 9
	ldr	r3, [sp, #4]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 1284 5
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	str	r3, [sp, #8]
	.loc 1 1285 15
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #12]
	.loc 1 1285 23
	ldr	r3, [sp, #8]
	sub	r3, r2, r3
	.loc 1 1286 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI55:
	@ sp needed
	bx	lr
.LFE19:
	.size	SEGGER_RTT_HasDataUp, .-SEGGER_RTT_HasDataUp
	.section	.text.SEGGER_RTT_AllocDownBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_AllocDownBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_AllocDownBuffer, %function
SEGGER_RTT_AllocDownBuffer:
.LFB20:
	.loc 1 1307 103
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI56:
	sub	sp, sp, #28
.LCFI57:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1310 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L92
	.loc 1 1310 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L92:
.LBB6:
	.loc 1 1311 3 is_stmt 1
	.syntax divided
@ 1311 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1312 15
	mov	r3, #0
	str	r3, [sp, #20]
.L95:
	.loc 1 1314 39
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #76
	ldr	r3, [r3]
	.loc 1 1314 8
	cmp	r3, #0
	beq	.L99
	.loc 1 1317 16
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 1318 37
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #20]
	.loc 1 1318 3
	ldr	r2, [sp, #20]
	cmp	r2, r3
	blt	.L95
	b	.L94
.L99:
	.loc 1 1315 7
	nop
.L94:
	.loc 1 1319 32
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #20]
	.loc 1 1319 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bge	.L96
	.loc 1 1320 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #72
	ldr	r2, [sp, #12]
	str	r2, [r3]
	.loc 1 1321 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #76
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1322 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #80
	ldr	r2, [sp, #4]
	str	r2, [r3]
	.loc 1 1323 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #88
	mov	r2, #0
	str	r2, [r3]
	.loc 1 1324 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #84
	mov	r2, #0
	str	r2, [r3]
	.loc 1 1325 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #92
	ldr	r2, [sp]
	str	r2, [r3]
	b	.L97
.L96:
	.loc 1 1327 17
	mvn	r3, #0
	str	r3, [sp, #20]
.L97:
	.loc 1 1329 3
	ldr	r3, [sp, #16]
	.syntax divided
@ 1329 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE6:
	.loc 1 1330 10
	ldr	r3, [sp, #20]
	.loc 1 1331 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI58:
	@ sp needed
	ldr	pc, [sp], #4
.LFE20:
	.size	SEGGER_RTT_AllocDownBuffer, .-SEGGER_RTT_AllocDownBuffer
	.section	.text.SEGGER_RTT_AllocUpBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_AllocUpBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_AllocUpBuffer, %function
SEGGER_RTT_AllocUpBuffer:
.LFB21:
	.loc 1 1352 101
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI59:
	sub	sp, sp, #28
.LCFI60:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1355 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L101
	.loc 1 1355 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L101:
.LBB7:
	.loc 1 1356 3 is_stmt 1
	.syntax divided
@ 1356 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1357 15
	mov	r3, #0
	str	r3, [sp, #20]
.L104:
	.loc 1 1359 37
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r3, [sp, #20]
	add	r1, r3, #1
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r3, [r3]
	.loc 1 1359 8
	cmp	r3, #0
	beq	.L108
	.loc 1 1362 16
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 1363 37
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #16]
	.loc 1 1363 3
	ldr	r2, [sp, #20]
	cmp	r2, r3
	blt	.L104
	b	.L103
.L108:
	.loc 1 1360 7
	nop
.L103:
	.loc 1 1364 32
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #16]
	.loc 1 1364 6
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bge	.L105
	.loc 1 1365 47
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r3, [sp, #20]
	add	r1, r3, #1
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r2, [sp, #12]
	str	r2, [r3]
	.loc 1 1366 47
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r3, [sp, #20]
	add	r1, r3, #1
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1367 47
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #32
	ldr	r2, [sp, #4]
	str	r2, [r3]
	.loc 1 1368 47
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #40
	mov	r2, #0
	str	r2, [r3]
	.loc 1 1369 47
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #36
	mov	r2, #0
	str	r2, [r3]
	.loc 1 1370 47
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #20]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #44
	ldr	r2, [sp]
	str	r2, [r3]
	b	.L106
.L105:
	.loc 1 1372 17
	mvn	r3, #0
	str	r3, [sp, #20]
.L106:
	.loc 1 1374 3
	ldr	r3, [sp, #16]
	.syntax divided
@ 1374 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE7:
	.loc 1 1375 10
	ldr	r3, [sp, #20]
	.loc 1 1376 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI61:
	@ sp needed
	ldr	pc, [sp], #4
.LFE21:
	.size	SEGGER_RTT_AllocUpBuffer, .-SEGGER_RTT_AllocUpBuffer
	.section	.text.SEGGER_RTT_ConfigUpBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_ConfigUpBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_ConfigUpBuffer, %function
SEGGER_RTT_ConfigUpBuffer:
.LFB22:
	.loc 1 1403 124
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI62:
	sub	sp, sp, #28
.LCFI63:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1406 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L110
	.loc 1 1406 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L110:
	.loc 1 1407 42 is_stmt 1
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #16]
	.loc 1 1407 21
	mov	r2, r3
	.loc 1 1407 6
	ldr	r3, [sp, #12]
	cmp	r3, r2
	bcs	.L111
.LBB8:
	.loc 1 1408 5
	.syntax divided
@ 1408 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1409 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L112
	.loc 1 1410 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r3, [sp, #12]
	add	r1, r3, #1
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1411 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r3, [sp, #12]
	add	r1, r3, #1
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #4
	ldr	r2, [sp, #4]
	str	r2, [r3]
	.loc 1 1412 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #32
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1413 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #40
	mov	r2, #0
	str	r2, [r3]
	.loc 1 1414 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #36
	mov	r2, #0
	str	r2, [r3]
.L112:
	.loc 1 1416 49
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #44
	ldr	r2, [sp, #32]
	str	r2, [r3]
	.loc 1 1417 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1417 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE8:
	.loc 1 1418 7
	mov	r3, #0
	str	r3, [sp, #20]
	b	.L113
.L111:
	.loc 1 1420 7
	mvn	r3, #0
	str	r3, [sp, #20]
.L113:
	.loc 1 1422 10
	ldr	r3, [sp, #20]
	.loc 1 1423 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI64:
	@ sp needed
	ldr	pc, [sp], #4
.LFE22:
	.size	SEGGER_RTT_ConfigUpBuffer, .-SEGGER_RTT_ConfigUpBuffer
	.section	.text.SEGGER_RTT_ConfigDownBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_ConfigDownBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_ConfigDownBuffer, %function
SEGGER_RTT_ConfigDownBuffer:
.LFB23:
	.loc 1 1450 126
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI65:
	sub	sp, sp, #28
.LCFI66:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1453 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L116
	.loc 1 1453 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L116:
	.loc 1 1454 42 is_stmt 1
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #20]
	.loc 1 1454 21
	mov	r2, r3
	.loc 1 1454 6
	ldr	r3, [sp, #12]
	cmp	r3, r2
	bcs	.L117
.LBB9:
	.loc 1 1455 5
	.syntax divided
@ 1455 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1456 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L118
	.loc 1 1457 51
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #72
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 1458 51
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #76
	ldr	r2, [sp, #4]
	str	r2, [r3]
	.loc 1 1459 51
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #80
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1460 51
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #88
	mov	r2, #0
	str	r2, [r3]
	.loc 1 1461 51
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #84
	mov	r2, #0
	str	r2, [r3]
.L118:
	.loc 1 1463 51
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #12]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #92
	ldr	r2, [sp, #32]
	str	r2, [r3]
	.loc 1 1464 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1464 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE9:
	.loc 1 1465 7
	mov	r3, #0
	str	r3, [sp, #20]
	b	.L119
.L117:
	.loc 1 1467 7
	mvn	r3, #0
	str	r3, [sp, #20]
.L119:
	.loc 1 1469 10
	ldr	r3, [sp, #20]
	.loc 1 1470 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI67:
	@ sp needed
	ldr	pc, [sp], #4
.LFE23:
	.size	SEGGER_RTT_ConfigDownBuffer, .-SEGGER_RTT_ConfigDownBuffer
	.section	.text.SEGGER_RTT_SetNameUpBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_SetNameUpBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_SetNameUpBuffer, %function
SEGGER_RTT_SetNameUpBuffer:
.LFB24:
	.loc 1 1488 73
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI68:
	sub	sp, sp, #20
.LCFI69:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1491 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L122
	.loc 1 1491 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L122:
	.loc 1 1492 42 is_stmt 1
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #16]
	.loc 1 1492 21
	mov	r2, r3
	.loc 1 1492 6
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bcs	.L123
.LBB10:
	.loc 1 1493 5
	.syntax divided
@ 1493 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #8]
	.loc 1 1494 40
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r3, [sp, #4]
	add	r1, r3, #1
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1495 5
	ldr	r3, [sp, #8]
	.syntax divided
@ 1495 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE10:
	.loc 1 1496 7
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L124
.L123:
	.loc 1 1498 7
	mvn	r3, #0
	str	r3, [sp, #12]
.L124:
	.loc 1 1500 10
	ldr	r3, [sp, #12]
	.loc 1 1501 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI70:
	@ sp needed
	ldr	pc, [sp], #4
.LFE24:
	.size	SEGGER_RTT_SetNameUpBuffer, .-SEGGER_RTT_SetNameUpBuffer
	.section	.text.SEGGER_RTT_SetNameDownBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_SetNameDownBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_SetNameDownBuffer, %function
SEGGER_RTT_SetNameDownBuffer:
.LFB25:
	.loc 1 1519 75
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI71:
	sub	sp, sp, #20
.LCFI72:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1522 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L127
	.loc 1 1522 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L127:
	.loc 1 1523 42 is_stmt 1
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #20]
	.loc 1 1523 21
	mov	r2, r3
	.loc 1 1523 6
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bcs	.L128
.LBB11:
	.loc 1 1524 5
	.syntax divided
@ 1524 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #8]
	.loc 1 1525 42
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #4]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #72
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1526 5
	ldr	r3, [sp, #8]
	.syntax divided
@ 1526 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE11:
	.loc 1 1527 7
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L129
.L128:
	.loc 1 1529 7
	mvn	r3, #0
	str	r3, [sp, #12]
.L129:
	.loc 1 1531 10
	ldr	r3, [sp, #12]
	.loc 1 1532 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI73:
	@ sp needed
	ldr	pc, [sp], #4
.LFE25:
	.size	SEGGER_RTT_SetNameDownBuffer, .-SEGGER_RTT_SetNameDownBuffer
	.section	.text.SEGGER_RTT_SetFlagsUpBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_SetFlagsUpBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_SetFlagsUpBuffer, %function
SEGGER_RTT_SetFlagsUpBuffer:
.LFB26:
	.loc 1 1550 71
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI74:
	sub	sp, sp, #20
.LCFI75:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1553 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L132
	.loc 1 1553 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L132:
	.loc 1 1554 42 is_stmt 1
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #16]
	.loc 1 1554 21
	mov	r2, r3
	.loc 1 1554 6
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bcs	.L133
.LBB12:
	.loc 1 1555 5
	.syntax divided
@ 1555 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #8]
	.loc 1 1556 40
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #4]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #44
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1557 5
	ldr	r3, [sp, #8]
	.syntax divided
@ 1557 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE12:
	.loc 1 1558 7
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L134
.L133:
	.loc 1 1560 7
	mvn	r3, #0
	str	r3, [sp, #12]
.L134:
	.loc 1 1562 10
	ldr	r3, [sp, #12]
	.loc 1 1563 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI76:
	@ sp needed
	ldr	pc, [sp], #4
.LFE26:
	.size	SEGGER_RTT_SetFlagsUpBuffer, .-SEGGER_RTT_SetFlagsUpBuffer
	.section	.text.SEGGER_RTT_SetFlagsDownBuffer,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_SetFlagsDownBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_SetFlagsDownBuffer, %function
SEGGER_RTT_SetFlagsDownBuffer:
.LFB27:
	.loc 1 1581 73
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI77:
	sub	sp, sp, #20
.LCFI78:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1584 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L137
	.loc 1 1584 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L137:
	.loc 1 1585 42 is_stmt 1
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldr	r3, [r3, #20]
	.loc 1 1585 21
	mov	r2, r3
	.loc 1 1585 6
	ldr	r3, [sp, #4]
	cmp	r3, r2
	bcs	.L138
.LBB13:
	.loc 1 1586 5
	.syntax divided
@ 1586 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #8]
	.loc 1 1587 42
	movw	r2, #:lower16:_SEGGER_RTT
	movt	r2, #:upper16:_SEGGER_RTT
	ldr	r1, [sp, #4]
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r3, r3, #92
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 1588 5
	ldr	r3, [sp, #8]
	.syntax divided
@ 1588 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE13:
	.loc 1 1589 7
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L139
.L138:
	.loc 1 1591 7
	mvn	r3, #0
	str	r3, [sp, #12]
.L139:
	.loc 1 1593 10
	ldr	r3, [sp, #12]
	.loc 1 1594 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI79:
	@ sp needed
	ldr	pc, [sp], #4
.LFE27:
	.size	SEGGER_RTT_SetFlagsDownBuffer, .-SEGGER_RTT_SetFlagsDownBuffer
	.section	.text.SEGGER_RTT_Init,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_Init
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_Init, %function
SEGGER_RTT_Init:
.LFB28:
	.loc 1 1605 29
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI80:
	.loc 1 1606 3
	bl	_DoInit
	.loc 1 1607 1
	nop
	pop	{r4, pc}
.LFE28:
	.size	SEGGER_RTT_Init, .-SEGGER_RTT_Init
	.section	.text.SEGGER_RTT_SetTerminal,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_SetTerminal
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_SetTerminal, %function
SEGGER_RTT_SetTerminal:
.LFB29:
	.loc 1 1623 46
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI81:
	sub	sp, sp, #36
.LCFI82:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1629 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L143
	.loc 1 1629 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L143:
	.loc 1 1631 5 is_stmt 1
	mov	r3, #0
	str	r3, [sp, #28]
	.loc 1 1632 9
	mvn	r3, #0
	strb	r3, [sp, #12]
	.loc 1 1633 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L144
	.loc 1 1634 26
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	.loc 1 1634 25
	movw	r3, #:lower16:_aTerminalId
	movt	r3, #:upper16:_aTerminalId
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	.loc 1 1634 11
	strb	r3, [sp, #13]
	.loc 1 1635 11
	ldr	r3, .L150
	str	r3, [sp, #24]
.LBB14:
	.loc 1 1636 5
	.syntax divided
@ 1636 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #20]
	.loc 1 1637 15
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #20]
	.loc 1 1637 23
	and	r3, r3, #3
	.loc 1 1637 8
	cmp	r3, #2
	bne	.L145
	.loc 1 1638 23
	movw	r3, #:lower16:_ActiveTerminal
	movt	r3, #:upper16:_ActiveTerminal
	ldrb	r2, [sp, #7]
	strb	r2, [r3]
	.loc 1 1639 7
	add	r3, sp, #12
	mov	r2, #2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_WriteBlocking
	b	.L146
.L145:
	.loc 1 1641 15
	ldr	r0, [sp, #24]
	bl	_GetAvailWriteSpace
	str	r0, [sp, #16]
	.loc 1 1642 10
	ldr	r3, [sp, #16]
	cmp	r3, #1
	bls	.L147
	.loc 1 1643 25
	movw	r3, #:lower16:_ActiveTerminal
	movt	r3, #:upper16:_ActiveTerminal
	ldrb	r2, [sp, #7]
	strb	r2, [r3]
	.loc 1 1644 9
	add	r3, sp, #12
	mov	r2, #2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_WriteNoCheck
	b	.L146
.L147:
	.loc 1 1646 11
	mvn	r3, #0
	str	r3, [sp, #28]
.L146:
	.loc 1 1649 5
	ldr	r3, [sp, #20]
	.syntax divided
@ 1649 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE14:
	b	.L148
.L144:
	.loc 1 1651 7
	mvn	r3, #0
	str	r3, [sp, #28]
.L148:
	.loc 1 1653 10
	ldr	r3, [sp, #28]
	.loc 1 1654 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI83:
	@ sp needed
	ldr	pc, [sp], #4
.L151:
	.align	2
.L150:
	.word	_SEGGER_RTT+24
.LFE29:
	.size	SEGGER_RTT_SetTerminal, .-SEGGER_RTT_SetTerminal
	.section	.text.SEGGER_RTT_TerminalOut,"ax",%progbits
	.align	2
	.global	SEGGER_RTT_TerminalOut
	.syntax unified
	.arm
	.fpu softvfp
	.type	SEGGER_RTT_TerminalOut, %function
SEGGER_RTT_TerminalOut:
.LFB30:
	.loc 1 1673 61
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI84:
	sub	sp, sp, #36
.LCFI85:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 1679 3
	movw	r3, #:lower16:_SEGGER_RTT
	movt	r3, #:upper16:_SEGGER_RTT
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L153
	.loc 1 1679 3 is_stmt 0 discriminator 1
	bl	_DoInit
.L153:
	.loc 1 1683 6 is_stmt 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L154
	.loc 1 1687 11
	ldr	r3, .L166
	str	r3, [sp, #24]
	.loc 1 1692 15
	ldr	r0, [sp]
	bl	strlen
	str	r0, [sp, #20]
.LBB15:
	.loc 1 1696 5
	.syntax divided
@ 1696 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mrs r1, CPSR 
	mov r3, r1 
	orr r1, r1, #0xC0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #16]
	.loc 1 1697 13
	ldr	r0, [sp, #24]
	bl	_GetAvailWriteSpace
	str	r0, [sp, #12]
	.loc 1 1698 18
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #20]
	.loc 1 1698 26
	and	r3, r3, #3
	.loc 1 1698 5
	cmp	r3, #2
	beq	.L155
	cmp	r3, #2
	bhi	.L156
	cmp	r3, #0
	beq	.L157
	cmp	r3, #1
	beq	.L158
	b	.L156
.L157:
	.loc 1 1704 28
	ldr	r3, [sp, #20]
	add	r3, r3, #4
	.loc 1 1704 10
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcs	.L159
	.loc 1 1705 16
	mov	r3, #0
	str	r3, [sp, #28]
	.loc 1 1711 7
	b	.L161
.L159:
	.loc 1 1707 9
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_PostTerminalSwitch
	.loc 1 1708 23
	ldr	r2, [sp, #20]
	ldr	r1, [sp]
	ldr	r0, [sp, #24]
	bl	_WriteBlocking
	mov	r3, r0
	.loc 1 1708 16
	str	r3, [sp, #28]
	.loc 1 1709 9
	movw	r3, #:lower16:_ActiveTerminal
	movt	r3, #:upper16:_ActiveTerminal
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_PostTerminalSwitch
	.loc 1 1711 7
	b	.L161
.L158:
	.loc 1 1718 10
	ldr	r3, [sp, #12]
	cmp	r3, #3
	bhi	.L162
	.loc 1 1719 16
	mvn	r3, #0
	str	r3, [sp, #28]
	.loc 1 1725 7
	b	.L161
.L162:
	.loc 1 1721 9
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_PostTerminalSwitch
	.loc 1 1722 66
	ldr	r3, [sp, #12]
	sub	r2, r3, #4
	.loc 1 1722 23
	ldr	r3, [sp, #20]
	cmp	r2, r3
	movcc	r3, r2
	movcs	r3, r3
	mov	r2, r3
	ldr	r1, [sp]
	ldr	r0, [sp, #24]
	bl	_WriteBlocking
	mov	r3, r0
	.loc 1 1722 16
	str	r3, [sp, #28]
	.loc 1 1723 9
	movw	r3, #:lower16:_ActiveTerminal
	movt	r3, #:upper16:_ActiveTerminal
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_PostTerminalSwitch
	.loc 1 1725 7
	b	.L161
.L155:
	.loc 1 1730 7
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_PostTerminalSwitch
	.loc 1 1731 21
	ldr	r2, [sp, #20]
	ldr	r1, [sp]
	ldr	r0, [sp, #24]
	bl	_WriteBlocking
	mov	r3, r0
	.loc 1 1731 14
	str	r3, [sp, #28]
	.loc 1 1732 7
	movw	r3, #:lower16:_ActiveTerminal
	movt	r3, #:upper16:_ActiveTerminal
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #24]
	bl	_PostTerminalSwitch
	.loc 1 1733 7
	b	.L161
.L156:
	.loc 1 1735 14
	mvn	r3, #0
	str	r3, [sp, #28]
	.loc 1 1736 7
	nop
.L161:
	.loc 1 1741 5
	ldr	r3, [sp, #16]
	.syntax divided
@ 1741 "C:\Users\mattf\Documents\SEGGER Embedded Studio for ARM Projects\Hw7\SEGGER\SEGGER_RTT.c" 1
	mov r0, r3 
	mrs r1, CPSR 
	bic r1, r1, #0xC0 
	and r0, r0, #0xC0 
	orr r1, r1, r0 
	msr CPSR_c, r1 
	
@ 0 "" 2
	.arm
	.syntax unified
.LBE15:
	b	.L164
.L154:
	.loc 1 1743 12
	mvn	r3, #0
	str	r3, [sp, #28]
.L164:
	.loc 1 1745 10
	ldr	r3, [sp, #28]
	.loc 1 1746 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI86:
	@ sp needed
	ldr	pc, [sp], #4
.L167:
	.align	2
.L166:
	.word	_SEGGER_RTT+24
.LFE30:
	.size	SEGGER_RTT_TerminalOut, .-SEGGER_RTT_TerminalOut
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI6-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI9-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI12-.LFB4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI14-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI17-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI20-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI23-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI26-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI29-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI32-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI35-.LFB12
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI37-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI40-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI43-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI46-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI49-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI52-.LFB18
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI54-.LFB19
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI56-.LFB20
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI59-.LFB21
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI62-.LFB22
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI65-.LFB23
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI68-.LFB24
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI71-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI74-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI77-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI80-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI81-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI84-.LFB30
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE60:
	.text
.Letext0:
	.file 2 "C:\\Users\\mattf\\Documents\\SEGGER Embedded Studio for ARM Projects\\Hw7\\SEGGER\\SEGGER_RTT.h"
	.section	.debug_types,"G",%progbits,wt.93fae8d72318aa6f,comdat
	.4byte	0xca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x93
	.byte	0xfa
	.byte	0xe8
	.byte	0xd7
	.byte	0x23
	.byte	0x18
	.byte	0xaa
	.byte	0x6f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x78
	.byte	0x2
	.byte	0x67
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF554
	.byte	0x2
	.byte	0x68
	.byte	0x1b
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF555
	.byte	0x2
	.byte	0x69
	.byte	0x1b
	.4byte	0x78
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF556
	.byte	0x2
	.byte	0x6a
	.byte	0x1b
	.4byte	0x78
	.byte	0x14
	.uleb128 0x4
	.ascii	"aUp\000"
	.byte	0x2
	.byte	0x6b
	.byte	0x1b
	.4byte	0x7f
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF557
	.byte	0x2
	.byte	0x6c
	.byte	0x1b
	.4byte	0x8f
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0x78
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	0xad
	.4byte	0x8f
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xbd
	.4byte	0x9f
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF559
	.uleb128 0x9
	.4byte	.LASF560
	.byte	0x2
	.byte	0x53
	.byte	0x3
	.byte	0x96
	.byte	0x23
	.byte	0x67
	.byte	0xd0
	.byte	0xb2
	.byte	0x64
	.byte	0x2c
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF561
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.byte	0xcf
	.byte	0xe
	.byte	0xc2
	.byte	0x77
	.byte	0xe
	.byte	0x6
	.byte	0x19
	.byte	0x3a
	.byte	0
	.section	.debug_types,"G",%progbits,wt.cf0ec2770e06193a,comdat
	.4byte	0x96
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xcf
	.byte	0xe
	.byte	0xc2
	.byte	0x77
	.byte	0xe
	.byte	0x6
	.byte	0x19
	.byte	0x3a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x18
	.byte	0x2
	.byte	0x59
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF562
	.byte	0x2
	.byte	0x5a
	.byte	0x16
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF563
	.byte	0x2
	.byte	0x5b
	.byte	0x16
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF564
	.byte	0x2
	.byte	0x5c
	.byte	0x16
	.4byte	0x81
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF565
	.byte	0x2
	.byte	0x5d
	.byte	0x16
	.4byte	0x88
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF566
	.byte	0x2
	.byte	0x5e
	.byte	0x16
	.4byte	0x81
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF567
	.byte	0x2
	.byte	0x5f
	.byte	0x16
	.4byte	0x81
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x92
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF559
	.uleb128 0xb
	.4byte	0x81
	.uleb128 0xc
	.4byte	0x92
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.byte	0
	.section	.debug_types,"G",%progbits,wt.962367d0b2642c1d,comdat
	.4byte	0x96
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x96
	.byte	0x23
	.byte	0x67
	.byte	0xd0
	.byte	0xb2
	.byte	0x64
	.byte	0x2c
	.byte	0x1d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x18
	.byte	0x2
	.byte	0x4c
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF562
	.byte	0x2
	.byte	0x4d
	.byte	0x16
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF563
	.byte	0x2
	.byte	0x4e
	.byte	0x16
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF564
	.byte	0x2
	.byte	0x4f
	.byte	0x16
	.4byte	0x81
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF565
	.byte	0x2
	.byte	0x50
	.byte	0x16
	.4byte	0x81
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF566
	.byte	0x2
	.byte	0x51
	.byte	0x16
	.4byte	0x88
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF567
	.byte	0x2
	.byte	0x52
	.byte	0x16
	.4byte	0x81
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x92
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF559
	.uleb128 0xb
	.4byte	0x81
	.uleb128 0xc
	.4byte	0x92
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.byte	0
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
	.section	.debug_types,"G",%progbits,wt.1839347164335ef6,comdat
	.4byte	0x86
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x18
	.byte	0x39
	.byte	0x34
	.byte	0x71
	.byte	0x64
	.byte	0x33
	.byte	0x5e
	.byte	0xf6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.4byte	.LASF571
	.byte	0x8
	.byte	0x3
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xe
	.4byte	.LASF568
	.byte	0x3
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xe
	.4byte	.LASF569
	.byte	0x3
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF570
	.byte	0x3
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x61
	.uleb128 0x10
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x11
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xc
	.4byte	0x82
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.byte	0
	.section	.debug_types,"G",%progbits,wt.67b2e44cb9c485aa,comdat
	.4byte	0x67
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x67
	.byte	0xb2
	.byte	0xe4
	.byte	0x4c
	.byte	0xb9
	.byte	0xc4
	.byte	0x85
	.byte	0xaa
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x12
	.4byte	.LASF572
	.byte	0x14
	.byte	0x3
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF573
	.byte	0x3
	.byte	0xdd
	.byte	0x20
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x6
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x55
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF559
	.uleb128 0xc
	.4byte	0x5a
	.uleb128 0x9
	.4byte	.LASF574
	.byte	0x3
	.byte	0xd8
	.byte	0x3
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.byte	0
	.section	.debug_types,"G",%progbits,wt.8186c6c43e1e78ec,comdat
	.4byte	0x93
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x3
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF575
	.byte	0x3
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF576
	.byte	0x3
	.byte	0xd6
	.byte	0x25
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF577
	.byte	0x3
	.byte	0xd7
	.byte	0x28
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x60
	.uleb128 0xa
	.byte	0x4
	.4byte	0x65
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6a
	.uleb128 0xc
	.4byte	0x6f
	.uleb128 0xc
	.4byte	0x76
	.uleb128 0xc
	.4byte	0x86
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.uleb128 0x9
	.4byte	.LASF578
	.byte	0x3
	.byte	0xae
	.byte	0x3
	.byte	0xc0
	.byte	0x1a
	.byte	0x87
	.byte	0x40
	.byte	0x88
	.byte	0xa8
	.byte	0x2d
	.byte	0x75
	.uleb128 0x9
	.4byte	.LASF579
	.byte	0x3
	.byte	0xd2
	.byte	0x3
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.byte	0
	.section	.debug_types,"G",%progbits,wt.455fe6c44992c069,comdat
	.4byte	0x16a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x20
	.byte	0x3
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF580
	.byte	0x3
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF581
	.byte	0x3
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF582
	.byte	0x3
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF583
	.byte	0x3
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF584
	.byte	0x3
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF585
	.byte	0x3
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF586
	.byte	0x3
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF587
	.byte	0x3
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xa
	.byte	0x4
	.4byte	0xea
	.uleb128 0xa
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xa
	.byte	0x4
	.4byte	0x112
	.uleb128 0x10
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x11
	.4byte	0x130
	.uleb128 0x11
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x11
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x11
	.4byte	0x137
	.uleb128 0x11
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x11
	.4byte	0x137
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x11
	.4byte	0x13e
	.uleb128 0x11
	.4byte	0x144
	.uleb128 0x11
	.4byte	0x14b
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x11
	.4byte	0x155
	.uleb128 0x11
	.4byte	0x15b
	.uleb128 0x11
	.4byte	0x144
	.uleb128 0x11
	.4byte	0x14b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF588
	.uleb128 0xa
	.byte	0x4
	.4byte	0x161
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF559
	.uleb128 0x13
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x144
	.uleb128 0xa
	.byte	0x4
	.4byte	0x168
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.uleb128 0xc
	.4byte	0x161
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c01a874088a82d75,comdat
	.4byte	0x1d6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc0
	.byte	0x1a
	.byte	0x87
	.byte	0x40
	.byte	0x88
	.byte	0xa8
	.byte	0x2d
	.byte	0x75
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x58
	.byte	0x3
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF589
	.byte	0x3
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF590
	.byte	0x3
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF591
	.byte	0x3
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF592
	.byte	0x3
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF593
	.byte	0x3
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF594
	.byte	0x3
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF595
	.byte	0x3
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF596
	.byte	0x3
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF597
	.byte	0x3
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF598
	.byte	0x3
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF599
	.byte	0x3
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF600
	.byte	0x3
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF601
	.byte	0x3
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF602
	.byte	0x3
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF603
	.byte	0x3
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF604
	.byte	0x3
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF605
	.byte	0x3
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF606
	.byte	0x3
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF607
	.byte	0x3
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF608
	.byte	0x3
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF609
	.byte	0x3
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF610
	.byte	0x3
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF611
	.byte	0x3
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF612
	.byte	0x3
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF613
	.byte	0x3
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF614
	.byte	0x3
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF615
	.byte	0x3
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF616
	.byte	0x3
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF617
	.byte	0x3
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF618
	.byte	0x3
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF619
	.byte	0x3
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF620
	.byte	0x3
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.uleb128 0xc
	.4byte	0x1cd
	.byte	0
	.section	.debug_types,"G",%progbits,wt.43a13c2b4d789e4a,comdat
	.4byte	0x50
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x12
	.4byte	.LASF621
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF622
	.byte	0x3
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF623
	.byte	0x3
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF588
	.byte	0
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xfdc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF696
	.byte	0xc
	.4byte	.LASF697
	.4byte	.LASF698
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF588
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.uleb128 0xc
	.4byte	0x39
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF559
	.uleb128 0xa
	.byte	0x4
	.4byte	0x40
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF624
	.uleb128 0xc
	.4byte	0x52
	.uleb128 0x9
	.4byte	.LASF579
	.byte	0x3
	.byte	0xd2
	.byte	0x3
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.uleb128 0xc
	.4byte	0x5e
	.uleb128 0x9
	.4byte	.LASF574
	.byte	0x3
	.byte	0xd8
	.byte	0x3
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.uleb128 0xc
	.4byte	0x73
	.uleb128 0x16
	.4byte	.LASF625
	.byte	0x3
	.2byte	0x106
	.byte	0x1a
	.byte	0x67
	.byte	0xb2
	.byte	0xe4
	.byte	0x4c
	.byte	0xb9
	.byte	0xc4
	.byte	0x85
	.byte	0xaa
	.uleb128 0x17
	.4byte	.LASF626
	.byte	0x3
	.2byte	0x10d
	.byte	0x24
	.4byte	0x83
	.uleb128 0x17
	.4byte	.LASF627
	.byte	0x3
	.2byte	0x110
	.byte	0x2c
	.4byte	0x6e
	.uleb128 0x17
	.4byte	.LASF628
	.byte	0x3
	.2byte	0x111
	.byte	0x2c
	.4byte	0x6e
	.uleb128 0x5
	.4byte	0x59
	.4byte	0xd0
	.uleb128 0x6
	.4byte	0x45
	.byte	0x7f
	.byte	0
	.uleb128 0xc
	.4byte	0xc0
	.uleb128 0x17
	.4byte	.LASF629
	.byte	0x3
	.2byte	0x113
	.byte	0x23
	.4byte	0xd0
	.uleb128 0x5
	.4byte	0x40
	.4byte	0xed
	.uleb128 0x18
	.byte	0
	.uleb128 0xc
	.4byte	0xe2
	.uleb128 0x17
	.4byte	.LASF630
	.byte	0x3
	.2byte	0x115
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF631
	.byte	0x3
	.2byte	0x116
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF632
	.byte	0x3
	.2byte	0x117
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF633
	.byte	0x3
	.2byte	0x118
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF634
	.byte	0x3
	.2byte	0x11a
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF635
	.byte	0x3
	.2byte	0x11b
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF636
	.byte	0x3
	.2byte	0x11c
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF637
	.byte	0x3
	.2byte	0x11d
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF638
	.byte	0x3
	.2byte	0x11e
	.byte	0x13
	.4byte	0xed
	.uleb128 0x17
	.4byte	.LASF639
	.byte	0x3
	.2byte	0x11f
	.byte	0x13
	.4byte	0xed
	.uleb128 0x10
	.4byte	0x2b
	.4byte	0x183
	.uleb128 0x11
	.4byte	0x183
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x18e
	.uleb128 0x19
	.4byte	.LASF699
	.uleb128 0xc
	.4byte	0x189
	.uleb128 0x17
	.4byte	.LASF640
	.byte	0x3
	.2byte	0x135
	.byte	0xe
	.4byte	0x1a0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x174
	.uleb128 0x10
	.4byte	0x2b
	.4byte	0x1b5
	.uleb128 0x11
	.4byte	0x1b5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x189
	.uleb128 0x17
	.4byte	.LASF641
	.byte	0x3
	.2byte	0x136
	.byte	0xe
	.4byte	0x1c8
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1a6
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF642
	.uleb128 0x1a
	.4byte	.LASF643
	.byte	0x3
	.2byte	0x153
	.byte	0x3
	.byte	0x18
	.byte	0x39
	.byte	0x34
	.byte	0x71
	.byte	0x64
	.byte	0x33
	.byte	0x5e
	.byte	0xf6
	.uleb128 0x17
	.4byte	.LASF644
	.byte	0x3
	.2byte	0x157
	.byte	0x1f
	.4byte	0x1f3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d5
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF645
	.uleb128 0x9
	.4byte	.LASF560
	.byte	0x2
	.byte	0x53
	.byte	0x3
	.byte	0x96
	.byte	0x23
	.byte	0x67
	.byte	0xd0
	.byte	0xb2
	.byte	0x64
	.byte	0x2c
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF561
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.byte	0xcf
	.byte	0xe
	.byte	0xc2
	.byte	0x77
	.byte	0xe
	.byte	0x6
	.byte	0x19
	.byte	0x3a
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x230
	.uleb128 0x6
	.4byte	0x45
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF646
	.byte	0x2
	.byte	0x6d
	.byte	0x3
	.byte	0x93
	.byte	0xfa
	.byte	0xe8
	.byte	0xd7
	.byte	0x23
	.byte	0x18
	.byte	0xaa
	.byte	0x6f
	.uleb128 0x1b
	.4byte	.LASF647
	.byte	0x2
	.byte	0x75
	.byte	0x16
	.4byte	0x230
	.uleb128 0x5
	.4byte	0x52
	.4byte	0x25c
	.uleb128 0x6
	.4byte	0x45
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF648
	.byte	0x1
	.byte	0xe3
	.byte	0x16
	.4byte	0x24c
	.uleb128 0x5
	.byte	0x3
	.4byte	_aTerminalId
	.uleb128 0x1d
	.4byte	0x240
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.uleb128 0x5
	.byte	0x3
	.4byte	_SEGGER_RTT
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x28d
	.uleb128 0x1e
	.4byte	0x45
	.2byte	0x3ff
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF649
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	0x27c
	.uleb128 0x5
	.byte	0x3
	.4byte	_acUpBuffer
	.uleb128 0x1c
	.4byte	.LASF650
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	0x220
	.uleb128 0x5
	.byte	0x3
	.4byte	_acDownBuffer
	.uleb128 0x1c
	.4byte	.LASF651
	.byte	0x1
	.byte	0xf3
	.byte	0xd
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	_ActiveTerminal
	.uleb128 0x1f
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x689
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x357
	.uleb128 0x20
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x689
	.byte	0x22
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x21
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x689
	.byte	0x3a
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x68a
	.byte	0x19
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x68b
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x68c
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x68d
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x6a0
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x200
	.uleb128 0x1f
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x657
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e0
	.uleb128 0x20
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x657
	.byte	0x22
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x24
	.ascii	"ac\000"
	.byte	0x1
	.2byte	0x658
	.byte	0x19
	.4byte	0x3e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x659
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x65a
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x65b
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x664
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x52
	.4byte	0x3f0
	.uleb128 0x6
	.4byte	0x45
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.4byte	.LASF700
	.byte	0x1
	.2byte	0x645
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x62d
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x467
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x62d
	.byte	0x2c
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x62d
	.byte	0x42
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x62e
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x632
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x60e
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cb
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x60e
	.byte	0x2a
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x60e
	.byte	0x40
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x60f
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x613
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF663
	.byte	0x1
	.2byte	0x5ef
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52f
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x5ef
	.byte	0x2b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x5ef
	.byte	0x44
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x5f0
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x5f4
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x5d0
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x593
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x5d0
	.byte	0x29
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x5d0
	.byte	0x42
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x5d1
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x5d5
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF665
	.byte	0x1
	.2byte	0x5aa
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x627
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x5aa
	.byte	0x2a
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x5aa
	.byte	0x43
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x5aa
	.byte	0x50
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x5aa
	.byte	0x62
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x5aa
	.byte	0x77
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x5ab
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x5af
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x57b
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bb
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x57b
	.byte	0x28
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x57b
	.byte	0x41
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x57b
	.byte	0x4e
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x57b
	.byte	0x60
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x57b
	.byte	0x75
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x57c
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x580
	.byte	0x5
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x548
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x741
	.uleb128 0x20
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x548
	.byte	0x2a
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x548
	.byte	0x37
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x548
	.byte	0x49
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x548
	.byte	0x5e
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x549
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x54c
	.byte	0x3
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x51b
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c7
	.uleb128 0x20
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x51b
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x51b
	.byte	0x39
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x51b
	.byte	0x4b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x51b
	.byte	0x60
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x51c
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x51f
	.byte	0x3
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x4ff
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x811
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x4ff
	.byte	0x28
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x500
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x501
	.byte	0x1b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x26
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x4ea
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85b
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x4ea
	.byte	0x26
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x4eb
	.byte	0x1b
	.4byte	0x85b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x4ec
	.byte	0x1b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x210
	.uleb128 0x1f
	.4byte	.LASF672
	.byte	0x1
	.2byte	0x4d0
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89b
	.uleb128 0x22
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x4d1
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x4d2
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF673
	.byte	0x1
	.2byte	0x4b9
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c5
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x4ba
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF674
	.byte	0x1
	.2byte	0x49d
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fd
	.uleb128 0x24
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x49e
	.byte	0x8
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x49f
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF675
	.byte	0x1
	.2byte	0x460
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x981
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x460
	.byte	0x26
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x460
	.byte	0x38
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x461
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x462
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x463
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x468
	.byte	0x3
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF676
	.byte	0x1
	.2byte	0x428
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa05
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x428
	.byte	0x2a
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x428
	.byte	0x3c
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x429
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x42a
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x42b
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x430
	.byte	0x3
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF677
	.byte	0x1
	.2byte	0x3f9
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6f
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x3f9
	.byte	0x30
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x3f9
	.byte	0x42
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x3fa
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x3fb
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x22
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x3fc
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF678
	.byte	0x1
	.2byte	0x3db
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab9
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x3db
	.byte	0x2a
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x3db
	.byte	0x43
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"Len\000"
	.byte	0x1
	.2byte	0x3dc
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF679
	.byte	0x1
	.2byte	0x3b6
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2f
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x3b6
	.byte	0x24
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x3b6
	.byte	0x3d
	.4byte	0xb2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x3b6
	.byte	0x4f
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x3b7
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x3ba
	.byte	0x3
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb35
	.uleb128 0x27
	.uleb128 0x1f
	.4byte	.LASF681
	.byte	0x1
	.2byte	0x36f
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc2
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x36f
	.byte	0x2a
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x36f
	.byte	0x43
	.4byte	0xb2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x36f
	.byte	0x55
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x370
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x371
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF682
	.byte	0x1
	.2byte	0x372
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x373
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF683
	.byte	0x1
	.2byte	0x2df
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6e
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x2df
	.byte	0x2e
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x2df
	.byte	0x47
	.4byte	0xb2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x2df
	.byte	0x59
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.4byte	.LASF682
	.byte	0x1
	.2byte	0x2e0
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x2e1
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x2e2
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x2e3
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x2e4
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"Rem\000"
	.byte	0x1
	.2byte	0x2e5
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.4byte	.LASF701
	.byte	0x1
	.2byte	0x27f
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce6
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x27f
	.byte	0x33
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x27f
	.byte	0x4c
	.4byte	0xb2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x27f
	.byte	0x5e
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.LASF682
	.byte	0x1
	.2byte	0x280
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x281
	.byte	0x19
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x282
	.byte	0x19
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF684
	.byte	0x1
	.2byte	0x258
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5c
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x258
	.byte	0x23
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x258
	.byte	0x36
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x258
	.byte	0x48
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF685
	.byte	0x1
	.2byte	0x259
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x25b
	.byte	0x3
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF686
	.byte	0x1
	.2byte	0x1fe
	.byte	0xa
	.4byte	0x45
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe08
	.uleb128 0x20
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x1fe
	.byte	0x29
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.4byte	.LASF682
	.byte	0x1
	.2byte	0x1fe
	.byte	0x3c
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x1fe
	.byte	0x4c
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.4byte	.LASF687
	.byte	0x1
	.2byte	0x1ff
	.byte	0x1b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF685
	.byte	0x1
	.2byte	0x200
	.byte	0x1b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x201
	.byte	0x1b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x202
	.byte	0x1b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x203
	.byte	0x1b
	.4byte	0xe08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x204
	.byte	0x1b
	.4byte	0x85b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x52
	.uleb128 0x29
	.4byte	.LASF691
	.byte	0x1
	.2byte	0x1d5
	.byte	0x11
	.4byte	0x45
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe68
	.uleb128 0x20
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x1d5
	.byte	0x3b
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x1d6
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x1d7
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x1d8
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF688
	.byte	0x1
	.2byte	0x1bf
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeaf
	.uleb128 0x20
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x1bf
	.byte	0x37
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x1bf
	.byte	0x4c
	.4byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x24
	.ascii	"ac\000"
	.byte	0x1
	.2byte	0x1c0
	.byte	0x11
	.4byte	0x3e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF689
	.byte	0x1
	.2byte	0x17f
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf27
	.uleb128 0x20
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x17f
	.byte	0x31
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF682
	.byte	0x1
	.2byte	0x17f
	.byte	0x44
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x17f
	.byte	0x54
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.LASF690
	.byte	0x1
	.2byte	0x180
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x181
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.ascii	"Rem\000"
	.byte	0x1
	.2byte	0x182
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF692
	.byte	0x1
	.2byte	0x13f
	.byte	0x11
	.4byte	0x45
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb3
	.uleb128 0x20
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x13f
	.byte	0x36
	.4byte	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x13f
	.byte	0x49
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x13f
	.byte	0x5b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.4byte	.LASF693
	.byte	0x1
	.2byte	0x140
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF694
	.byte	0x1
	.2byte	0x141
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x142
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x143
	.byte	0xc
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF695
	.byte	0x1
	.2byte	0x108
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd9
	.uleb128 0x24
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x109
	.byte	0x12
	.4byte	0xfd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x230
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x41
	.byte	0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x3d8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xfe0
	.4byte	0x25c
	.ascii	"_aTerminalId\000"
	.4byte	0x26e
	.ascii	"_SEGGER_RTT\000"
	.4byte	0x28d
	.ascii	"_acUpBuffer\000"
	.4byte	0x29f
	.ascii	"_acDownBuffer\000"
	.4byte	0x2b1
	.ascii	"_ActiveTerminal\000"
	.4byte	0x28d
	.ascii	"_acUpBuffer\000"
	.4byte	0x29f
	.ascii	"_acDownBuffer\000"
	.4byte	0x2b1
	.ascii	"_ActiveTerminal\000"
	.4byte	0x26e
	.ascii	"_SEGGER_RTT\000"
	.4byte	0x2c3
	.ascii	"SEGGER_RTT_TerminalOut\000"
	.4byte	0x35d
	.ascii	"SEGGER_RTT_SetTerminal\000"
	.4byte	0x3f0
	.ascii	"SEGGER_RTT_Init\000"
	.4byte	0x403
	.ascii	"SEGGER_RTT_SetFlagsDownBuffer\000"
	.4byte	0x467
	.ascii	"SEGGER_RTT_SetFlagsUpBuffer\000"
	.4byte	0x4cb
	.ascii	"SEGGER_RTT_SetNameDownBuffer\000"
	.4byte	0x52f
	.ascii	"SEGGER_RTT_SetNameUpBuffer\000"
	.4byte	0x593
	.ascii	"SEGGER_RTT_ConfigDownBuffer\000"
	.4byte	0x627
	.ascii	"SEGGER_RTT_ConfigUpBuffer\000"
	.4byte	0x6bb
	.ascii	"SEGGER_RTT_AllocUpBuffer\000"
	.4byte	0x741
	.ascii	"SEGGER_RTT_AllocDownBuffer\000"
	.4byte	0x7c7
	.ascii	"SEGGER_RTT_HasDataUp\000"
	.4byte	0x811
	.ascii	"SEGGER_RTT_HasData\000"
	.4byte	0x861
	.ascii	"SEGGER_RTT_HasKey\000"
	.4byte	0x89b
	.ascii	"SEGGER_RTT_WaitKey\000"
	.4byte	0x8c5
	.ascii	"SEGGER_RTT_GetKey\000"
	.4byte	0x8fd
	.ascii	"SEGGER_RTT_PutChar\000"
	.4byte	0x981
	.ascii	"SEGGER_RTT_PutCharSkip\000"
	.4byte	0xa05
	.ascii	"SEGGER_RTT_PutCharSkipNoLock\000"
	.4byte	0xa6f
	.ascii	"SEGGER_RTT_WriteString\000"
	.4byte	0xab9
	.ascii	"SEGGER_RTT_Write\000"
	.4byte	0xb36
	.ascii	"SEGGER_RTT_WriteNoLock\000"
	.4byte	0xbc2
	.ascii	"SEGGER_RTT_WriteSkipNoLock\000"
	.4byte	0xc6e
	.ascii	"SEGGER_RTT_WriteWithOverwriteNoLock\000"
	.4byte	0xce6
	.ascii	"SEGGER_RTT_Read\000"
	.4byte	0xd5c
	.ascii	"SEGGER_RTT_ReadNoLock\000"
	.4byte	0xe0e
	.ascii	"_GetAvailWriteSpace\000"
	.4byte	0xe68
	.ascii	"_PostTerminalSwitch\000"
	.4byte	0xeaf
	.ascii	"_WriteNoCheck\000"
	.4byte	0xf27
	.ascii	"_WriteBlocking\000"
	.4byte	0xfb3
	.ascii	"_DoInit\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x13f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xfe0
	.4byte	0x2b
	.ascii	"int\000"
	.4byte	0x32
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0x39
	.ascii	"char\000"
	.4byte	0x45
	.ascii	"unsigned int\000"
	.4byte	0x52
	.ascii	"unsigned char\000"
	.4byte	0x5e
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x73
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0x1ce
	.ascii	"short unsigned int\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x1d5
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x1f9
	.ascii	"long long int\000"
	.4byte	0x200
	.ascii	"SEGGER_RTT_BUFFER_UP\000"
	.4byte	0x210
	.ascii	"SEGGER_RTT_BUFFER_DOWN\000"
	.4byte	0x230
	.ascii	"SEGGER_RTT_CB\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x10c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x46
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF455
	.file 4 "C:\\Users\\mattf\\Documents\\SEGGER Embedded Studio for ARM Projects\\Hw7\\SEGGER\\SEGGER_RTT_Conf.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF467
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF540
	.byte	0x4
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF553
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.023e67563ca0a2a36cc2fe5867feab93,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0
	.4byte	.LASF398
	.byte	0x6
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x6
	.uleb128 0
	.4byte	.LASF404
	.byte	0x6
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x6
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x6
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x6
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x6
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0
	.4byte	.LASF421
	.byte	0x6
	.uleb128 0
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x6
	.uleb128 0
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x6
	.uleb128 0
	.4byte	.LASF432
	.byte	0x6
	.uleb128 0
	.4byte	.LASF433
	.byte	0x6
	.uleb128 0
	.4byte	.LASF434
	.byte	0x6
	.uleb128 0
	.4byte	.LASF435
	.byte	0x6
	.uleb128 0
	.4byte	.LASF436
	.byte	0x6
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x6
	.uleb128 0
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0
	.4byte	.LASF443
	.byte	0x6
	.uleb128 0
	.4byte	.LASF444
	.byte	0x6
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_RTT_Conf.h.52.a9072aeb4cd60cf799a300e4cb780ba1,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF466
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.45.c15bb6e0a60630589d552427ceaabe49,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF469
	.byte	0x6
	.uleb128 0x43
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF488
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.54.34e6c3eb1c7772d5405254538c14b58d,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF495
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdarg.h.45.7e97408de6aa84c96a85aafa9d623203,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF500
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.SEGGER_RTT.h.155.13e6723a94c1aad9bd483c87a2ac3a96,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF539
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF217:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF245:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF269:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF202:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF696:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-a9"
	.ascii	" -mlittle-endian -mfloat-abi=soft -mthumb-interwork"
	.ascii	" -mtp=soft -munaligned-access -std=gnu99 -g3 -gpubn"
	.ascii	"ames -fdebug-types-section -fomit-frame-pointer -fn"
	.ascii	"o-dwarf2-cfi-asm -fno-builtin -ffunction-sections -"
	.ascii	"fdata-sections -fshort-enums -fno-common\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF208:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF332:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF513:
	.ascii	"RTT_CTRL_TEXT_MAGENTA \"\\x1B[2;35m\"\000"
.LASF222:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF467:
	.ascii	"__stdlib_H \000"
.LASF244:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF322:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF197:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF190:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF296:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF435:
	.ascii	"__ARM_NEON__\000"
.LASF392:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF550:
	.ascii	"SEGGER_RTT_BUFFER_ALIGN(Var) Var\000"
.LASF334:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF654:
	.ascii	"FragLen\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF224:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF665:
	.ascii	"SEGGER_RTT_ConfigDownBuffer\000"
.LASF163:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF560:
	.ascii	"SEGGER_RTT_BUFFER_UP\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF524:
	.ascii	"RTT_CTRL_BG_BLACK \"\\x1B[24;40m\"\000"
.LASF411:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF428:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF402:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF284:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF617:
	.ascii	"am_pm_indicator\000"
.LASF499:
	.ascii	"va_copy(d,s) __builtin_va_copy((d),(s))\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF260:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF522:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_CYAN \"\\x1B[1;36m\"\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 2\000"
.LASF292:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF668:
	.ascii	"SEGGER_RTT_AllocUpBuffer\000"
.LASF528:
	.ascii	"RTT_CTRL_BG_BLUE \"\\x1B[24;44m\"\000"
.LASF559:
	.ascii	"unsigned int\000"
.LASF569:
	.ascii	"next\000"
.LASF653:
	.ascii	"Status\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF333:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF616:
	.ascii	"abbrev_month_names\000"
.LASF291:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF651:
	.ascii	"_ActiveTerminal\000"
.LASF5:
	.ascii	"__GNUC__ 9\000"
.LASF394:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF367:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF161:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF227:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF373:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF566:
	.ascii	"RdOff\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF399:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF237:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF176:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF593:
	.ascii	"currency_symbol\000"
.LASF324:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF698:
	.ascii	"C:\\Users\\mattf\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\Hw7\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF531:
	.ascii	"RTT_CTRL_BG_WHITE \"\\x1B[24;47m\"\000"
.LASF481:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF185:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF609:
	.ascii	"int_p_sep_by_space\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF650:
	.ascii	"_acDownBuffer\000"
.LASF594:
	.ascii	"mon_decimal_point\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF390:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 2\000"
.LASF563:
	.ascii	"pBuffer\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF238:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF193:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF274:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF633:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF452:
	.ascii	"__SES_VERSION 45000\000"
.LASF416:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF679:
	.ascii	"SEGGER_RTT_Write\000"
.LASF433:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF8:
	.ascii	"__VERSION__ \"9.2.1 20191025 (release) [ARM/arm-9-b"
	.ascii	"ranch revision 277599]\"\000"
.LASF252:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF289:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF205:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF589:
	.ascii	"decimal_point\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF315:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF331:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF320:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF468:
	.ascii	"__crossworks_H \000"
.LASF604:
	.ascii	"n_sep_by_space\000"
.LASF461:
	.ascii	"SEGGER_RTT_PRINTF_BUFFER_SIZE (64u)\000"
.LASF397:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF494:
	.ascii	"RAND_MAX 32767\000"
.LASF424:
	.ascii	"__ARMEL__ 1\000"
.LASF366:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF512:
	.ascii	"RTT_CTRL_TEXT_BLUE \"\\x1B[2;34m\"\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF297:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF403:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF228:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF656:
	.ascii	"pRing\000"
.LASF464:
	.ascii	"SEGGER_RTT_MAX_INTERRUPT_PRIORITY (0x20)\000"
.LASF330:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF701:
	.ascii	"SEGGER_RTT_WriteWithOverwriteNoLock\000"
.LASF401:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF583:
	.ascii	"__iswctype\000"
.LASF661:
	.ascii	"BufferIndex\000"
.LASF602:
	.ascii	"p_sep_by_space\000"
.LASF404:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF201:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF470:
	.ascii	"__RAL_SIZE_T\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF356:
	.ascii	"__SA_IBIT__ 16\000"
.LASF286:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF510:
	.ascii	"RTT_CTRL_TEXT_GREEN \"\\x1B[2;32m\"\000"
.LASF683:
	.ascii	"SEGGER_RTT_WriteSkipNoLock\000"
.LASF413:
	.ascii	"__ARM_ARCH_PROFILE 65\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF489:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF357:
	.ascii	"__DA_FBIT__ 31\000"
.LASF410:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF235:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF497:
	.ascii	"va_start(v,l) __builtin_va_start((v),l)\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF405:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF302:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF638:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF203:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF196:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF256:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF462:
	.ascii	"SEGGER_RTT_MODE_DEFAULT SEGGER_RTT_MODE_NO_BLOCK_SK"
	.ascii	"IP\000"
.LASF406:
	.ascii	"__ARM_FEATURE_LDREX 15\000"
.LASF635:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF395:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF530:
	.ascii	"RTT_CTRL_BG_CYAN \"\\x1B[24;46m\"\000"
.LASF535:
	.ascii	"RTT_CTRL_BG_BRIGHT_YELLOW \"\\x1B[4;43m\"\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF282:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF584:
	.ascii	"__towupper\000"
.LASF279:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF323:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF408:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF640:
	.ascii	"__user_set_time_of_day\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF612:
	.ascii	"int_n_sign_posn\000"
.LASF290:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF174:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF310:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF644:
	.ascii	"__RAL_error_decoder_head\000"
.LASF277:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF599:
	.ascii	"int_frac_digits\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF216:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF200:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF431:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF652:
	.ascii	"TerminalId\000"
.LASF475:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF293:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF198:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF658:
	.ascii	"SEGGER_RTT_TerminalOut\000"
.LASF243:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF265:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF466:
	.ascii	"SEGGER_RTT_UNLOCK() __asm volatile (\"mov r0, %0 \\"
	.ascii	"n\\t\" \"mrs r1, CPSR \\n\\t\" \"bic r1, r1, #0xC0 "
	.ascii	"\\n\\t\" \"and r0, r0, #0xC0 \\n\\t\" \"orr r1, r1,"
	.ascii	" r0 \\n\\t\" \"msr CPSR_c, r1 \\n\\t\" : : \"r\" (L"
	.ascii	"ockState) : \"r0\", \"r1\" ); }\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF270:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF249:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF659:
	.ascii	"SEGGER_RTT_SetTerminal\000"
.LASF209:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF393:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF699:
	.ascii	"timeval\000"
.LASF544:
	.ascii	"SEGGER_RTT_MEMCPY(pDest,pSrc,NumBytes) memcpy((pDes"
	.ascii	"t), (pSrc), (NumBytes))\000"
.LASF623:
	.ascii	"__wchar\000"
.LASF364:
	.ascii	"__USA_IBIT__ 16\000"
.LASF350:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF278:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF246:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF526:
	.ascii	"RTT_CTRL_BG_GREEN \"\\x1B[24;42m\"\000"
.LASF398:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF485:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF605:
	.ascii	"p_sign_posn\000"
.LASF469:
	.ascii	"__THREAD __thread\000"
.LASF301:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF234:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF677:
	.ascii	"SEGGER_RTT_PutCharSkipNoLock\000"
.LASF607:
	.ascii	"int_p_cs_precedes\000"
.LASF557:
	.ascii	"aDown\000"
.LASF309:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF682:
	.ascii	"pData\000"
.LASF672:
	.ascii	"SEGGER_RTT_HasKey\000"
.LASF621:
	.ascii	"__mbstate_s\000"
.LASF184:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF523:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_WHITE \"\\x1B[1;37m\"\000"
.LASF358:
	.ascii	"__DA_IBIT__ 32\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF314:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF319:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF261:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF262:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF253:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF389:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF325:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF299:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF649:
	.ascii	"_acUpBuffer\000"
.LASF355:
	.ascii	"__SA_FBIT__ 15\000"
.LASF207:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF549:
	.ascii	"SEGGER_RTT_CB_ALIGN(Var) Var\000"
.LASF657:
	.ascii	"LockState\000"
.LASF520:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_BLUE \"\\x1B[1;34m\"\000"
.LASF573:
	.ascii	"__category\000"
.LASF669:
	.ascii	"SEGGER_RTT_AllocDownBuffer\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF476:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF545:
	.ascii	"MIN(a,b) (((a) < (b)) ? (a) : (b))\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF477:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF608:
	.ascii	"int_n_cs_precedes\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF371:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF346:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF268:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF407:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF482:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF611:
	.ascii	"int_p_sign_posn\000"
.LASF598:
	.ascii	"negative_sign\000"
.LASF538:
	.ascii	"RTT_CTRL_BG_BRIGHT_CYAN \"\\x1B[4;46m\"\000"
.LASF327:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF300:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF681:
	.ascii	"SEGGER_RTT_WriteNoLock\000"
.LASF372:
	.ascii	"__NO_INLINE__ 1\000"
.LASF247:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF647:
	.ascii	"_SEGGER_RTT\000"
.LASF280:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF415:
	.ascii	"__ARM_ARCH\000"
.LASF591:
	.ascii	"grouping\000"
.LASF369:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF539:
	.ascii	"RTT_CTRL_BG_BRIGHT_WHITE \"\\x1B[4;47m\"\000"
.LASF192:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF445:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF495:
	.ascii	"MB_CUR_MAX __RAL_mb_max(&__RAL_global_locale)\000"
.LASF457:
	.ascii	"SEGGER_RTT_MAX_NUM_UP_BUFFERS (2)\000"
.LASF590:
	.ascii	"thousands_sep\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF478:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF164:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF558:
	.ascii	"char\000"
.LASF592:
	.ascii	"int_curr_symbol\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1013\000"
.LASF690:
	.ascii	"NumBytesAtOnce\000"
.LASF451:
	.ascii	"__HEAP_SIZE__ 1024\000"
.LASF191:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF215:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF574:
	.ascii	"__RAL_locale_t\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF229:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF639:
	.ascii	"__RAL_data_empty_string\000"
.LASF493:
	.ascii	"EXIT_FAILURE 1\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF536:
	.ascii	"RTT_CTRL_BG_BRIGHT_BLUE \"\\x1B[4;44m\"\000"
.LASF214:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF693:
	.ascii	"NumBytesToWrite\000"
.LASF240:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF666:
	.ascii	"BufferSize\000"
.LASF687:
	.ascii	"NumBytesRem\000"
.LASF585:
	.ascii	"__towlower\000"
.LASF576:
	.ascii	"data\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF363:
	.ascii	"__USA_FBIT__ 16\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF443:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF454:
	.ascii	"DEBUG 1\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF434:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF308:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF472:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF236:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF273:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF502:
	.ascii	"SEGGER_RTT_MODE_NO_BLOCK_SKIP (0U)\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF542:
	.ascii	"SEGGER_RTT_BUFFER_ALIGNMENT 0\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF194:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF518:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_GREEN \"\\x1B[1;32m\"\000"
.LASF533:
	.ascii	"RTT_CTRL_BG_BRIGHT_RED \"\\x1B[4;41m\"\000"
.LASF453:
	.ascii	"__GNU_LINKER 1\000"
.LASF162:
	.ascii	"__DBL_DIG__ 15\000"
.LASF561:
	.ascii	"SEGGER_RTT_BUFFER_DOWN\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF422:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF313:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF352:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF506:
	.ascii	"RTT_CTRL_RESET \"\\x1B[0m\"\000"
.LASF171:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF615:
	.ascii	"month_names\000"
.LASF219:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF307:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF349:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF218:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF548:
	.ascii	"SEGGER_RTT_PUT_SECTION(Var,Section) Var\000"
.LASF423:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF562:
	.ascii	"sName\000"
.LASF351:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF645:
	.ascii	"long long int\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF418:
	.ascii	"__APCS_32__ 1\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF303:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF487:
	.ascii	"__RAL_WCHAR_T unsigned\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF671:
	.ascii	"SEGGER_RTT_HasData\000"
.LASF414:
	.ascii	"__arm__ 1\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF541:
	.ascii	"SEGGER_RTT_ALIGNMENT 0\000"
.LASF175:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF342:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF361:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF685:
	.ascii	"NumBytesRead\000"
.LASF596:
	.ascii	"mon_grouping\000"
.LASF555:
	.ascii	"MaxNumUpBuffers\000"
.LASF241:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF515:
	.ascii	"RTT_CTRL_TEXT_WHITE \"\\x1B[2;37m\"\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF412:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF421:
	.ascii	"__THUMBEL__\000"
.LASF321:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF565:
	.ascii	"WrOff\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF170:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF567:
	.ascii	"Flags\000"
.LASF697:
	.ascii	"C:\\Users\\mattf\\Documents\\SEGGER Embedded Studio"
	.ascii	" for ARM Projects\\Hw7\\SEGGER\\SEGGER_RTT.c\000"
.LASF396:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF446:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF483:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF165:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF525:
	.ascii	"RTT_CTRL_BG_RED \"\\x1B[24;41m\"\000"
.LASF505:
	.ascii	"SEGGER_RTT_MODE_MASK (3U)\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF688:
	.ascii	"_PostTerminalSwitch\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF546:
	.ascii	"MAX(a,b) (((a) > (b)) ? (a) : (b))\000"
.LASF458:
	.ascii	"SEGGER_RTT_MAX_NUM_DOWN_BUFFERS (2)\000"
.LASF305:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF570:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF442:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF266:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF318:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF613:
	.ascii	"day_names\000"
.LASF248:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF437:
	.ascii	"__ARM_NEON_FP\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF329:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF264:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF316:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF359:
	.ascii	"__TA_FBIT__ 63\000"
.LASF188:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF226:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF177:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF490:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF288:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF391:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF417:
	.ascii	"__ARM_ARCH_ISA_ARM 1\000"
.LASF629:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF306:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF232:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF486:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF620:
	.ascii	"date_time_format\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF287:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF543:
	.ascii	"STRLEN(a) strlen((a))\000"
.LASF680:
	.ascii	"NumBytes\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF254:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF587:
	.ascii	"__mbtowc\000"
.LASF465:
	.ascii	"SEGGER_RTT_LOCK() { unsigned int LockState; __asm v"
	.ascii	"olatile (\"mrs r1, CPSR \\n\\t\" \"mov %0, r1 \\n\\"
	.ascii	"t\" \"orr r1, r1, #0xC0 \\n\\t\" \"msr CPSR_c, r1 \\"
	.ascii	"n\\t\" : \"=r\" (LockState) : : \"r1\" );\000"
.LASF660:
	.ascii	"SEGGER_RTT_SetFlagsDownBuffer\000"
.LASF440:
	.ascii	"__ARM_PCS 1\000"
.LASF336:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF496:
	.ascii	"__stdarg_H \000"
.LASF627:
	.ascii	"__RAL_codeset_ascii\000"
.LASF370:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF532:
	.ascii	"RTT_CTRL_BG_BRIGHT_BLACK \"\\x1B[4;40m\"\000"
.LASF686:
	.ascii	"SEGGER_RTT_ReadNoLock\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF339:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF670:
	.ascii	"SEGGER_RTT_HasDataUp\000"
.LASF255:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF480:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF430:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF338:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF444:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF554:
	.ascii	"acID\000"
.LASF579:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF577:
	.ascii	"codeset\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF581:
	.ascii	"__toupper\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF251:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF343:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF348:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF675:
	.ascii	"SEGGER_RTT_PutChar\000"
.LASF694:
	.ascii	"NumBytesWritten\000"
.LASF676:
	.ascii	"SEGGER_RTT_PutCharSkip\000"
.LASF625:
	.ascii	"__RAL_global_locale\000"
.LASF272:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF568:
	.ascii	"decode\000"
.LASF586:
	.ascii	"__wctomb\000"
.LASF345:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF578:
	.ascii	"__RAL_locale_data_t\000"
.LASF588:
	.ascii	"long int\000"
.LASF667:
	.ascii	"SEGGER_RTT_ConfigUpBuffer\000"
.LASF420:
	.ascii	"__thumb2__\000"
.LASF600:
	.ascii	"frac_digits\000"
.LASF691:
	.ascii	"_GetAvailWriteSpace\000"
.LASF337:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF514:
	.ascii	"RTT_CTRL_TEXT_CYAN \"\\x1B[2;36m\"\000"
.LASF456:
	.ascii	"SEGGER_RTT_CONF_H \000"
.LASF275:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF571:
	.ascii	"__RAL_error_decoder_s\000"
.LASF220:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF537:
	.ascii	"RTT_CTRL_BG_BRIGHT_MAGENTA \"\\x1B[4;45m\"\000"
.LASF474:
	.ascii	"__CODE \000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF312:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF419:
	.ascii	"__thumb__\000"
.LASF189:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF552:
	.ascii	"SEGGER_RTT_PUT_BUFFER_SECTION(Var) Var\000"
.LASF695:
	.ascii	"_DoInit\000"
.LASF182:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF648:
	.ascii	"_aTerminalId\000"
.LASF521:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_MAGENTA \"\\x1B[1;35m\"\000"
.LASF341:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF610:
	.ascii	"int_n_sep_by_space\000"
.LASF646:
	.ascii	"SEGGER_RTT_CB\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF700:
	.ascii	"SEGGER_RTT_Init\000"
.LASF258:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF335:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF211:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF362:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF628:
	.ascii	"__RAL_codeset_utf8\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF459:
	.ascii	"BUFFER_SIZE_UP (1024)\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF427:
	.ascii	"__ARM_FP\000"
.LASF553:
	.ascii	"INIT() do { if (_SEGGER_RTT.acID[0] == '\\0') { _Do"
	.ascii	"Init(); } } while (0)\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF283:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF597:
	.ascii	"positive_sign\000"
.LASF492:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF178:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF575:
	.ascii	"name\000"
.LASF225:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF540:
	.ascii	"__string_H \000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF634:
	.ascii	"__RAL_data_utf8_period\000"
.LASF409:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF271:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF426:
	.ascii	"__VFP_FP__ 1\000"
.LASF281:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF673:
	.ascii	"SEGGER_RTT_WaitKey\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF295:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF527:
	.ascii	"RTT_CTRL_BG_YELLOW \"\\x1B[24;43m\"\000"
.LASF501:
	.ascii	"SEGGER_RTT_HASDATA(n) (_SEGGER_RTT.aDown[n].WrOff -"
	.ascii	" _SEGGER_RTT.aDown[n].RdOff)\000"
.LASF317:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF257:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF460:
	.ascii	"BUFFER_SIZE_DOWN (16)\000"
.LASF344:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF347:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF354:
	.ascii	"__HA_IBIT__ 8\000"
.LASF441:
	.ascii	"__ARM_EABI__ 1\000"
.LASF631:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF564:
	.ascii	"SizeOfBuffer\000"
.LASF663:
	.ascii	"SEGGER_RTT_SetNameDownBuffer\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF267:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF353:
	.ascii	"__HA_FBIT__ 7\000"
.LASF534:
	.ascii	"RTT_CTRL_BG_BRIGHT_GREEN \"\\x1B[4;42m\"\000"
.LASF684:
	.ascii	"SEGGER_RTT_Read\000"
.LASF169:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF425:
	.ascii	"__SOFTFP__ 1\000"
.LASF449:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF664:
	.ascii	"SEGGER_RTT_SetNameUpBuffer\000"
.LASF473:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF595:
	.ascii	"mon_thousands_sep\000"
.LASF517:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_RED \"\\x1B[1;31m\"\000"
.LASF511:
	.ascii	"RTT_CTRL_TEXT_YELLOW \"\\x1B[2;33m\"\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF636:
	.ascii	"__RAL_data_utf8_space\000"
.LASF447:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF304:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF624:
	.ascii	"unsigned char\000"
.LASF233:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF471:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF630:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF626:
	.ascii	"__RAL_c_locale\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF311:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF199:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF259:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF529:
	.ascii	"RTT_CTRL_BG_MAGENTA \"\\x1B[24;45m\"\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF655:
	.ascii	"Avail\000"
.LASF455:
	.ascii	"SEGGER_RTT_H \000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF463:
	.ascii	"SEGGER_RTT_MEMCPY_USE_BYTELOOP 0\000"
.LASF186:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF340:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF491:
	.ascii	"NULL 0\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF551:
	.ascii	"SEGGER_RTT_PUT_CB_SECTION(Var) Var\000"
.LASF619:
	.ascii	"time_format\000"
.LASF519:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_YELLOW \"\\x1B[1;33m\"\000"
.LASF328:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF436:
	.ascii	"__ARM_NEON\000"
.LASF500:
	.ascii	"va_end(ap) __builtin_va_end(ap)\000"
.LASF580:
	.ascii	"__isctype\000"
.LASF547:
	.ascii	"SEGGER_RTT_ALIGN(Var,Alignment) Var\000"
.LASF263:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF484:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF368:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF614:
	.ascii	"abbrev_day_names\000"
.LASF439:
	.ascii	"__ARM_ARCH_7A__ 1\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF206:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF678:
	.ascii	"SEGGER_RTT_WriteString\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF173:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF168:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF294:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF556:
	.ascii	"MaxNumDownBuffers\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF509:
	.ascii	"RTT_CTRL_TEXT_RED \"\\x1B[2;31m\"\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF508:
	.ascii	"RTT_CTRL_TEXT_BLACK \"\\x1B[2;30m\"\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF298:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF213:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF231:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF166:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF637:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF507:
	.ascii	"RTT_CTRL_CLEAR \"\\x1B[2J\"\000"
.LASF642:
	.ascii	"short unsigned int\000"
.LASF516:
	.ascii	"RTT_CTRL_TEXT_BRIGHT_BLACK \"\\x1B[1;30m\"\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF360:
	.ascii	"__TA_IBIT__ 64\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF498:
	.ascii	"va_arg __builtin_va_arg\000"
.LASF674:
	.ascii	"SEGGER_RTT_GetKey\000"
.LASF230:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF210:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF603:
	.ascii	"n_cs_precedes\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF179:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF632:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF479:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF250:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF692:
	.ascii	"_WriteBlocking\000"
.LASF181:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF438:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF641:
	.ascii	"__user_get_time_of_day\000"
.LASF504:
	.ascii	"SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL (2U)\000"
.LASF606:
	.ascii	"n_sign_posn\000"
.LASF429:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF180:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF223:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF172:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF503:
	.ascii	"SEGGER_RTT_MODE_NO_BLOCK_TRIM (1U)\000"
.LASF400:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF195:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF622:
	.ascii	"__state\000"
.LASF276:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF365:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF326:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF662:
	.ascii	"SEGGER_RTT_SetFlagsUpBuffer\000"
.LASF618:
	.ascii	"date_format\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF183:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF242:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF689:
	.ascii	"_WriteNoCheck\000"
.LASF572:
	.ascii	"__locale_s\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF488:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF285:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\000"
.LASF212:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF601:
	.ascii	"p_cs_precedes\000"
.LASF643:
	.ascii	"__RAL_error_decoder_t\000"
.LASF187:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF204:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF239:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF221:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF582:
	.ascii	"__tolower\000"
.LASF167:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
