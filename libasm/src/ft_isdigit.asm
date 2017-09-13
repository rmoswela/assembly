section .text
	global _ft_isdigit
_ft_isdigit:
	cmp rdi, 48		; compare arg1 with ascii 48
	jl fail			; jump to label fail if lower than source index
	cmp rdi, 57		; compare arg1 with ascii 57
	jg fail			; jump to label fail if source index is greater
	jmp success		; jump to label success if between 48 and 57

fail:
	mov rax, 0		; move 0 to register ax failed execution
	ret				; terminate execution

success:
	mov rax, rdi	; move arg1 to rax for successful execution(non zero)
	ret
