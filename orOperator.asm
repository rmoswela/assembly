section .bss

result resb 1

section .text
global _start
_start:

mov al, 5	; get 5 in the al
mov bl, 3	; get 3 in the bl
or al, bl	; or al and bl
add al, '0'	; convert al from decimal to ascii
mov [result], al

mov eax, 4
mov ebx, 1
mov ecx, result
mov edx, 1
int 80h

; exit
mov eax, 1
int 0x80
