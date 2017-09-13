section .text
	global _ft_strlen

_ft_strlen:
	xor rcx, rcx	; clear a register to set it to zero
	not rcx			; reverse all bits hence rcx is equal to highest value possible
	xor al, al		; initialize al reg to zero so to compare with end edi reg
	jmp loop

loop:
	cld				; clear direction flag so to increment pointer to data at every iteration
	repne scasb		; repeat if not equal and scan or search for a string byte
					; compare value pointed by edi with value of al register(null)
	not rcx			; reverse all the bits of negative num is absolute value minus 1
	dec rcx			; not counting the null terminating character
	mov rax, rcx	; move value in rcx (counter reg) to accumulator (I/O reg)
	ret
