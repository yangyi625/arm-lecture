	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	
	push {r3, r4, r5, lr}
	mov r4,#0
	mov r3,#1
	sub r5,r0,#1
	cmp r0,#1
	beq .L4	
.L2:
	cmp r5,#0
	beq .L3 
	sub r5,r5,1
	add r0,r3,r4
	mov r4,r3	
	mov r3,r0
	b .L2
.L3:
	pop {r3, r4, r5, pc}		@EPILOG
.L4:
	mov r0,#1
	pop {r3, r4, r5, pc}		@EPILOG
	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
