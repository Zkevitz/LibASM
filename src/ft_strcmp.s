bits 64

global ft_strcmp

section .text

ft_strcmp :
    push rbp
    mov rbp, rsp        ; save stack context

    jmp .loop           ; jump to loop

.loop:
    mov al, [rdi]       ; load byte from string a
    mov dl, [rsi]       ; load byte from string b

    cmp al, dl          ; compare bytes
    jne .calc_result    ; if not equal, calculate result

    cmp al, 0           ; check if null terminator
    je .calc_result     ; if equal, calculate result

    inc rdi             ; increment string a pointer
    inc rsi             ; increment string b pointer
    jmp .loop           ; continue loop

.calc_result:
    movzx rax, al       ; extend byte stored in al to rax
    movzx rcx, dl       ; extend byte stored in dl to rcx
    sub rax, rcx        ; subtract rcx from rax
    leave               ; restore stack context
    ret                 ; return
    
; Warning remove
section .note.GNU-stack noalloc noexec nowrite progbits