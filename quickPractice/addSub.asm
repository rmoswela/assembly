; The program takes input from user store in eax and ebx registers
; add the values and store results in memory location res

sys_read equ	3
sys_write equ	4
sys_exit equ	1
stdin	equ	0
stdout	equ	1

section .data

msg1 db "Please Enter a digit", 0xa, 0xd
len1 equ $ - msg1

msg2 db "Please Enter second digit", 0xa, 0xd
len2 equ $ - msg2

msg3 db "Sum is "
len3 equ $ - msg3


section .bss

num1 resb 2
num2 resb 2
res resb 1

section .text

global _start
_start:

mov eax, sys_write
mov ebx, stdout
mov ecx, msg1
mov edx, len1
int 80h

mov eax, sys_read
mov ebx, stdin
mov ecx, num1
mov edx, 2
int 80h

mov eax, sys_write
mov ebx, stdout
mov ecx, msg2
mov edx, len2
int 0x80

mov eax, sys_read
mov ebx, stdin
mov ecx, num2
mov edx, 2
int 0x80 

mov eax, sys_write
mov ebx, stdout
mov ecx, msg3
mov edx, len3
int 0x80

; move first num to eax register and second num to ebx
; and subtracting '0' to make decimal

mov eax, [num1]
sub eax, '0'
mov ebx, [num2]
sub ebx, '0'

; add eax and ebx
add eax, ebx
; add '0' to convert sum from decimal to ascii
add eax, '0'

; store the sum in memory location res
mov [res], eax

; print sum
mov eax, sys_write
mov ebx, stdout
mov ecx, res
mov edx, 1
int 80h
nwln

; Exit
exit:
mov eax, sys_exit
xor ebx, ebx
int 0x80

