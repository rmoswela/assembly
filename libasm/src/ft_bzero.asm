section .text
	global _ft_bzero

_ft_bzero:
	jmp loop			; jump to label loop
loop:
	cmp rsi, 0			; compare arg2 with 0
	je return			; jump to label ret if equal
	mov byte[rdi], 0	; dereference replace value at the index of rdi(arg2) by 0
	inc rdi				; increment index of argument 1
	dec rsi				; decrease the length or argument 2
	jmp loop			; jump to label loop to continue looping
return:
	ret
