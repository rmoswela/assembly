section .text
	global ft_isprint
ft_isprint:
	cmp rdi, 32		; compare source index with ascii 32
	jl fail			; jump to label fail if lower than source index
	cmp rdi, 126		; compare source index with ascii 126
	jg fail			; jump to label fail if source index is greater
	jmp success		; jump to label success if between 32 and 126

fail:
	mov rax, 0		; move 0 to register ax failed execution
	ret			; terminate execution

success:
	mov rax, rdi		; move rdi to rax for successful execution(non zero)
	ret
