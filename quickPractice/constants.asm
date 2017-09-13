; defining constants to be used in the program
sys_write equ	4
sys_exit equ	1
stdin equ	0
stdout equ	1
interrupt equ	0x80

section .data

msg1 db 'Hello programmers', 0xa, 0xd
len1 equ $ - msg1
msg2 db 'Welcome to the world of', 0xa, 0xd
len2 equ $ - msg2
msg3 db 'Linux assembly programming', 0xa
len3 equ $ - msg3

section .text
global _start
_start:

mov eax, sys_write
mov ebx, stdout
mov ecx, msg1
mov edx, len1
int interrupt

mov eax, sys_write
mov ebx, stdout
mov ecx, msg2
mov edx, len2
int interrupt

mov eax, sys_write
mov ebx, stdout
mov ecx, msg3
mov edx, len3
int interrupt

; Exit
mov eax, sys_exit
int interrupt
