section .text
	global _ft_memset

_ft_memset:
	mov r8, rax		; copy the values of accumulator to register 8
	mov rcx, rdx	; copy value of the message to counter
	mov al, sil		; copy a byte from arg2 to al
	jmp loop
	jmp exit

loop:
	cld				; clear direction flag
	rep stosb		; repeat moving store string byte

exit:
	mov rax, r8		; move r8 value to rax
	ret
