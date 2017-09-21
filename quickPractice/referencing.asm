section .data

name db "Reuben Moswela "
len equ $ - name

section .text

global _start
_start:

; writing the name Reuben Moswela

mov edx, len	; message length
mov ecx, name	; message to write
mov ebx, 1	; file descriptor (stdout)
mov eax, 4	; system call number (sys_write)
int 0x80

mov [name], dword 'Lame'	; change the first name from reuben to lame
				; at value at memory address name

; writing the new name

mov edx, len
mov ecx, name
mov ebx, 1
mov eax, 4
int 80h

; Exit
mov eax, 1
mov ebx, 0
int 80h
