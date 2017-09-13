section .text
	global _ft_islower
_ft_islower:
	cmp rdi, 97		; compare arg1 with ascii 97
	jl fail			; jump to label fail if lower than source index
	cmp rdi, 122	; compare arg1 with ascii 122
	jg fail			; jump to label fail if source index is greater
	jmp success		; jump to label success if between 97 and 122

fail:
	mov rax, 0		; move 0 to register ax failed execution
	ret				; terminate execution

success:
	mov rax, rdi	; move arg1 value to rax for successful execution(non zero)
	ret
