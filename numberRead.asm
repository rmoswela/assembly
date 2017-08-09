section .data	; data segment

userMsg db 'Please enter a number: '	; ask user to enter number
lenUserMsg equ $ - userMsg		; length of the user message
dispUserMsg db 'You have entered: '	; display the number entered
lenDisMsg equ $ - dispUserMsg		; length of the display messsage
msg db 0xa				; new line
len equ $ - msg				; length of newline

section .bss	; bss segment

num resb 5				; reserve 5 bytes

section .text	; code segment

global _start
_start:
; User prompt
mov eax, 4				; system call number (sys_write)
mov ebx, 1				; file descriptor (stdout)
mov ecx, userMsg			; copy user message value to ecx
mov edx, lenUserMsg			; copy length value of user message to edx
int 80h

; Read and store User input
mov eax, 3				; system call number (sys_read)
mov ebx, 0 				; file descriptor (stdin)
mov ecx, num				; buffer of 5 bytes
mov edx, 5				; 5 bytes (numeric 1 for sign) of that information
int 80h

; Output the message 'you have entered'
mov eax, 4				; system call number (sys_write)
mov ebx, 1				; file descriptor (stdout)
mov ecx, dispUserMsg			; copy display message value to ecx
mov edx, lenDisMsg			; copy length of display message value to edx
int 0x80

; Output the entered number
mov eax, 4				; system call number (sys_write)
mov ebx, 1				; file descriptor (stdout)
mov ecx, num				; 
mov edx, 5
int 0x80

; New line addition
;mov eax, 4
;mov ebx, 1
;mov ecx, msg
;mov edx, len
;int 80h


; Exit code
mov eax, 1				; system call number (sys_exit)
mov ebx, 0				; system call number (successful termination)
int 80h
