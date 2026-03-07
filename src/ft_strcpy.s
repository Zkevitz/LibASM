bits 64 

global ft_strcpy

section .text

ft_strcpy :
    push rbp
    mov rbp, rsp        ; save stack context

    mov rax, rdi        ; place dest in return register
    jmp .loop           ; jump to loop

.loop:
    mov al, [rsi]       ; load byte from source
    mov [rdi], al       ; store byte to destination

    inc rsi             ; increment source pointer
    inc rdi             ; increment destination pointer

    cmp al, 0           ; compare byte with null terminator
    jne .loop           ; if not equal, continue loop

    leave               ; restore stack context

; Warning remove
section .note.GNU-stack noalloc noexec nowrite progbits