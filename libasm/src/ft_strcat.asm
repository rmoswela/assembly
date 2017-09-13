section .text
	global _ft_strcat

_ft_strcat:
	mov r9, rdi				; save arg1 to r9 register

endOfChar:
	cmp byte[rdi], 0		; compare the value at arg1 if its null
	je concatenate			; if equal jump to label concatenate
	inc rdi					; increment the pointer/index until the end of string
	jmp endOfChar

concatenate:
	cmp byte[rsi], 0		; check if the value of arg2 is null
	je finished				; jump to label finished if equal
	mov al, byte[rsi]		; move the value from arg2 to accumulator
	mov byte[rdi], al		; move value from accumulator to end of arg1
	inc rsi					; increment arg2 pointer
	inc rdi					; increment arg1 pointer
	jmp concatenate			; loop till end null character

finished:
	mov rax, r9				; move appended string to rax
	ret
