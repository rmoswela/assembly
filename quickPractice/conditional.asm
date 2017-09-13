stdout equ	1 ; file descriptor 1
sys_write equ	4 ; system call number
interrupt equ	0x80 ; kernel interrupt call

section .data

msg db "The largest digit is", 0xa, 0xd
len equ $ - msg
num1 db '47'
num2 db '22'
num3 db '31'

section .text
global _start
_start:
mov ecx, [num1]
cmp ecx, [num2]
jg thirdNum		; jump to label thirdNum if ecx is greater than value at num2
mov ecx, [num3]		; move value stored at memory address specified by num3 to register ecx
thirdNum:
cmp ecx, [num3]
jg _exit		; jump to label _exit if ecx, is greater than value at num3
mov ecx, [num3]
_exit:
mov [largest], ecx	; 
mov ecx, msg
mov edx, len
mov ebx, stdout
mov eax, sys_write
int interrupt
;nwln

mov ecx, largest
mov edx, 2
mov ebx, stdout
mov eax, sys_write
int interrupt

; Exit program
mov eax, 1		; sys_exit
int interrupt


section .bss
largest resb 2
