sys_write equ	4
sys_exit equ	1
stdin	equ	0
stdout	equ	1

section .data

count dw 0
value db 15

section .text
global _start
_start:
inc [count]
dec [value]
mov ebx, count
inc word [ebx]
mov esi, value
dec byte [esi]

mov eax, sys_write
mov ebx, stdout
mov ecx, count
mov edx, 15
int 80h

mov eax, sys_write
mov ebx, stdout
mov ecx, value
mov edx, 2
int 0x80

; Exit
mov eax, sys_exit

