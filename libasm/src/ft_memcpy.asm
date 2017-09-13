section .text
	global _ft_memcpy

_ft_memcpy:
	mov r8, rax		; copy the values of accumulator to register 8
	mov rcx, rdx	; copy value of the message to counter
	mov al, sil		; copy a byte from arg2 to al
	jmp loop		
	jmp exit

loop:
	cld				; clear direction flag
	rep movsb		; repeat moving of string byte

exit:
	mov rax, r8		; move values from r8 to rax
	ret
