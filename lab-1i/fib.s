	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

	mov r5, #0
	mov r4, #1
	sub r3, r5, #1
	
	for_loop:
		add r5, r4, r3
		mov r3, r4
		mov r4, r5

		subs r0, r0, #1
		bge for_loop

	mov r0, r4

	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
