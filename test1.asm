section .data
msg db 'Displaying 9 stars', 0xa	; a message
len equ $ - msg				; length of message
s2 times 9 db '*'
line db 0xa				; new line
lenLine equ $ - line			; length of newline

section .text

global _start
_start:

; the following says from eax register, write to std ouput (ebx)
; message (ecx) of the length value (edx) then call an interrupt
;mov dest, src
mov edx, len	; copies len value into edx
mov ecx, msg	; copies msg value into ecx
mov ebx, 1	; file descriptor (stdout)
mov eax, 4	; system call number(sys_write)
int 0x80	; call kernel, interrupt

mov edx, 9	; length of message
mov ecx, s2	; message to write
mov ebx, 1	; file descriptor (stdout)
mov eax, 4	; system call number(sys_write)
int 0x80	; call kernel, interrupt

mov eax, 4	; system call number
mov ebx, 1	; file descriptor (stdout)
mov ecx, line
mov edx, lenLine
int 80h

; system call numbers are put in eax register
mov eax, 1	; system call number (sys_exit)
int 0x80	; call kernel, interrupt

;instructions
