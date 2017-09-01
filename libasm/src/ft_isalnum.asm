section .text
	global ft_isalnum

ft_isalnum:
	cmp rdi, 48		; compare rdi to ascii decimal 48
	jl fail			; jump to label fail if rdi lower than 48
	cmp rdi, 57		; compare rdi to ascii decimal value 57 
	jg upper_case		; jump to label upper_case if greater
	jmp success		; jump to label success if between 65 and 90

fail:				; label fail
	mov rax, 0		; move 0 to register ax
		ret		; terminate function and return to program

upper_case:
	cmp rdi, 65		; compare rdi to ascii decimal 65
	jl fail			; jump to label fail if rdi lower than ascii decimal 65
	cmp rdi, 90		; compare rdi to ascii decimal 90
	jg lower_case		; jump to label lower_case if rdi is greater than 90

lower_case:			; label lower_case
	cmp rdi, 97		; compare rdi with char 97
	jl fail			; jump to label fail if less than 97
	cmp rdi, 122		; compare rdi with char 122
	jg fail			; jump to labe fail if greater than 122
	jmp success		; else jump to success

success:			; label success
	mov rax, rdi		; move rdi value to rax for succes and  non zero return
		ret

