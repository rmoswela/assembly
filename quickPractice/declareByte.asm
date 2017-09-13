section .data

char db 'R', 10
len equ $ - char

section .text
global _start
_start:

mov eax, 4	; system number call (sys_write)
mov ebx, 1	; file descriptor (stdout)
mov ecx, char	; message to write
mov edx, len	; message length
int 0x80	; call kernel interrupt

; Exit
mov eax, 1	; system number call (sys_exit)
int 80h
