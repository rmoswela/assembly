section .data
	newline		db		0xa
	err			db		"", 0x0a, 0
	sys_write	equ		0x2000004

section .text
	global 	_ft_puts
	extern	_ft_strlen

_ft_puts:
	cmp		rdi, 0				; compare arg1 to zero
	je		_error				; if equal jump to label error
	call	_ft_strlen			; call funtion strlen and store value in rdi
	mov		rcx, rdi			; move value from rdi to rcx
	mov		rdi, 1				; move 1 to rdi
	mov		rsi, rcx			; move value in rcx to rsi
	mov		rdx, rax			; move value rax to rdx
	mov		rax, sys_write		; move sys_write to rax
	syscall
	jmp		_line				; jump to label line

_error:
	mov		rdi, 1				; move 1 to rdi
	lea		rsi, [rel err]		; move address of var to rsi register
	mov		rdx, 1				; move 1 to rdx
	mov		rax, sys_write		; write to file descriptor
	syscall						; kernel call
	mov		rax, -10
	jmp		_exit

_line:
	mov		rdi, 1
	lea		rsi, [rel newline]	; move address var to rsi register
	mov		rdx, 1
	mov		rax, sys_write
	syscall
	mov		rax, 10
	jmp		_exit

_exit:
	ret

