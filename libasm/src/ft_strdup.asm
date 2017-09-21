section .text
	global _ft_strdup
	extern _ft_strlen
	extern _malloc
	extern _ft_memcpy


_ft_strdup:

	push	rdi					; push the argument to stack
	call	_ft_strlen			; get length of argument and store in rdi
	mov		rdi, rax			; save the value length in rax
	push	rdi			 
	call	_malloc				; allocate memory of the length of rdi
	mov		rdi, rax			; move saved value in rax to rdi
	pop		rdx					; get the top most pushed value on stack to rdx
	pop		rsi					; get the second most top value from stack to rsi
	push	rdx					; push length value in rdx
	call	_ft_memcpy			; copy string using length rdx
	pop		rdx					; get the top most value on the stack
	mov		byte[rax + rdx], 0	; move zero to the byte address at rax+rdx
	ret

