section .data
    SYS_READ    equ 0x2000003
    SYS_WRITE   equ 0x2000004
    newline     db  0x0a

section .bss
    tBuffer resb    1025

section .text
    global  _ft_cat
    extern  _printf

_ft_cat:
    mov rcx, 1              ;; rdi has the file descriptor
    lea rsi, [rel tBuffer]  ;; mov to rsi first address of reserved buffer bytes
    mov byte[rsi + 1024], 0 ;; null terminate the text buffer
    ;mov rdx, 10           ;; mov the length of the buffer | the bytes/read param
    mov rax, 1

_loop:
    cmp rax, 0              ;; compare rax, to stop when EOF is read and hence 0 isreturned
    je  _exit               ;; exit if read return zero
    push    rdi             ;; safekeep file descriptor
    call    _read           ;; call read
    push    rax
    call    _write
    pop     rax
    pop     rdi             ;; retrieve file descriptor
    jmp     _loop           ;; repeat reading instructions

_read:
	mov rdx, 10
    mov rax, SYS_READ   ;; mov read sys_code to rax
    syscall
    ret

_write:
    mov rdi, 1              ;; stdout to rdi
    lea rsi, [rel tBuffer]  ;; the buffer to print
    mov rdx, 10           ;; buffer length
    mov rax, SYS_WRITE      ;; mov write sys_code to rax
    syscall                 ;; call write
    ret

_newline:
    mov rdi, 1              ;; stdout to rdi
    lea rsi, [rel newline]  ;; the buffer to print
    mov rdx, 1              ;; buffer length
    mov rax, SYS_WRITE      ;; mov write sys_code to rax
    syscall                 ;; call write
    ret

_exit:
    call    _newline
    ret
