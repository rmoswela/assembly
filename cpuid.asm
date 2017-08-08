section .data
output db "The processor id number is 'xxxxxxxxxxxx'\n"
section .text
global _start
_start:

mov eax, 0
cpuid
mov edi, output
mov [28,edi], ebx
mov [32,edi], edx
mov [36,edi], ecx
mov eax, 4
mov ebx, 1
mov ecx, output
mov edx, 42
int 0x80
mov eax, 1
mov ebx, 0
int 0x80

