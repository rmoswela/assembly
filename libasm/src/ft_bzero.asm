section .text
	global ft_bzero

ft_bzero:
	jmp loop		; jump to label loop
loop:
	cmp rsi, 0		; compare the index at rsi with 0
	je return		; jump to label ret if equal
	mov byte[rdi], 0	; dereference and replace the value at rdi by 0
	inc rdi			; increment the destination index
	dec rsi			; decrease the source index
	jmp loop		; jump to label loop to continue looping
return:
	ret
