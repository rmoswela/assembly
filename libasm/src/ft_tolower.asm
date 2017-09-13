section .text
	global _ft_tolower
_ft_tolower:
	cmp rdi, 65		; compare arg1 with ascii 65
	jl fail			; jump to label fail if lower than source index
	cmp rdi, 90		; compare arg1 with ascii 90
	jg fail			; jump to label fail if source index is greater
	jmp success		; jump to label success if between 65 and 90

fail:
	mov rax, 0		; move 0 to register ax if character not between 65 and 90
	ret				; terminate execution

success:
	add rdi, 32		; add 32 to value of arg1 to make it lower caps
	mov rax, rdi	; move the result in rdi to rax
	ret
