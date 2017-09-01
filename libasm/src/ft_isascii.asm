section .text
	global ft_isascii
ft_isascii:
	cmp rdi, 0		; compare rdi with 0
	jl fail			; jump to label fail if equal
	cmp rdi, 127		; compare source index with ascii 127
	jg fail			; jump to label fail if source index is greater
	jmp success		; jump to label success if between 0 and 127

fail:
	mov rax, 0		; move 0 to register ax failed execution
	ret			; terminate execution

success:
	mov rax, 1		; move 1 to register rax successful execution
	ret
