section .text
	global ft_strlen

ft_strlen:
	xor rcx, rcx		; clear a register to set it to zero
	not rcx			; reversing all the bits hence rcx is equal to the highest value possible
	xor al, al		; initialize al register to null or zero so to compare with end edi register
	jmp loop

loop:
	cld			; clear direction flag hence, increment pointer to data at every iteration
	repne scasb		; repeat if not equal and scan or search for a string byte
				; compare the value pointed by edi with value of accumulator that is al register(null)
	not rcx			; reversing all the bits of negative num is absolute value minus 1
	dec rcx			; not counting the null terminating character
	mov rax, rcx		; move the value in rcx (counter register) to accumulator (input/output reg)
	ret
