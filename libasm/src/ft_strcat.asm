section .text
	global ft_strcat

ft_strcat:
	mov r9, rdi

endOfChar:
	cmp byte[rdi], 0		; compare the value at destination index if its null
	je concatenate			; if equal jump to label concatenate
	inc rdi				; increment the pointer
	jmp endOfChar

concatenate:
	cmp byte[rsi], 0		; check if the source index is null
	je finished			; jump to label finished if equal
	mov al, byte[rsi]		; move the value from source index to accumulator
	mov byte[rdi], al		; move from accumulator to destination index
	inc rsi				; increment source pointer
	inc rdi				; increment destination pointer
	jmp concatenate			; loop

finished:
	mov rax, r9
	ret
