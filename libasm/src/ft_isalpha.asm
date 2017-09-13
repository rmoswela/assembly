section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 65		; compare arg1 with char 65
	jl fail			; jump to label fail if less
	cmp rdi, 90		; compare arg1 with char 90
	jg lower_case		; jump to label lower_case if greater
	jmp success		; jump to label success if between 65 and 90

fail:				; label fail
	mov rax, 0		; move 0 to register ax
		ret			; terminate function and return to program

lower_case:			; label lower_case
	cmp rdi, 97		; compare arg1 with char 97
	jl fail			; jump to label fail if less than 97
	cmp rdi, 122	; compare arg1 with char 122
	jg fail			; jump to labe fail if greater than 122
	jmp success		; else jump to success

success:			; label success
	mov rax, rdi	; move arg1 value to rax for success (non zero)
		ret

