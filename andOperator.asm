section .data

evenMsg db "Even number!" ; message showing for even numbers
len1 equ $ - evenMsg
oddMsg db "Odd number!" ; message showing for odd numbers
len2 equ $ - oddMsg

section .text
global _start
_start:

mov ax, 9h	; getting 8 into ax
and ax, 1	; and ax with 1
jz evnn
mov eax, 4
mov ebx, 1
mov ecx, oddMsg
mov edx, len2
int 0x80
jmp outprog

evnn:
mov ah, 09h
mov eax, 4
mov ebx, 1
mov ecx, evenMsg
mov edx, len1
int 80h

outprog:
mov eax, 1
int 0x80
