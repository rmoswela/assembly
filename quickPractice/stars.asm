section .data

stars TIMES 9 DB '*'
space db 0xa

section .text
global _start
_start:

mov eax, 4	; system number call (sys_write)
mov ebx, 1	; file descriptor (stdout)
mov ecx, stars	; message to write
mov edx, 9	; length of message
int 80h

mov eax, 4
mov ebx, 1
mov ecx, space
mov edx, 1
int 0x80

; Exit
mov eax, 1	; system number call (sys_exit)
int 0x80	; kernel call interrupt
