section .text
	global _ft_isupper
_ft_isupper:
	cmp rdi, 65		; compare arg1 with ascii 65
	jl fail			; jump to label fail if lower than source index
	cmp rdi, 90		; compare arg1 with ascii 90
	jg fail			; jump to label fail if source index is greater
	jmp success		; jump to label success if between 65 and 90

fail:
	mov rax, 0		; move 0 to register ax failed execution
	ret				; terminate execution

success:
	mov rax, rdi	; move arg1 value to rax for successful execution(non zero)
	ret
