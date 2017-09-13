default rel

section .data
	buffsize	equ	1024
	sys_write	equ	4
	sys_read	equ	3

section .bss
	buffer		resb	buffsize

section .text
	global ft_cat

ft_cat:
	mov rbx, rdi

input:
	lea rsi, [buffer]
	mov rdi, rbx
	mov rdx, buffsize
	mov rax, sys_read
	syscall
	jc end
	cmp rax, 0
	jl end
	jne output
	ret

output:
	mov rdx, rax
	mov rdi, 1
	mov rax, sys_write
	syscall
	jc end
	cmp rax, 0
	jl end
	jne input
	ret

end:
	ret
