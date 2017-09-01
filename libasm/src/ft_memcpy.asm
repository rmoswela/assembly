section .text
	global ft_memcpy

ft_memcpy:
	mov r8, rax	; copy the values of accumulator to register 8
	mov rcx, rdx	; copy value of the message to counter
	mov al, sil	; copy pointed value to al
	jmp loop
	jmp exit

loop:
	cld		; clear direction flag
	rep movsb	; repeat moving of string byte

exit:
	mov rax, r8
	ret
