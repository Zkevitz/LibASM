bits 64

global ft_strlen    

section .text

ft_strlen:
    push rbp
    mov rbp, rsp         ; save stack context
    mov rax, 0           ; initialize counter
    jmp .loop            ; jump to loop

.loop:
    cmp byte [rdi + rax], 0 ; check if current byte is null terminator
    je .end                 ; if null terminator, jump to end
    inc rax                 ; increment counter
    jmp .loop               ; jump back to loop
.end:
    leave                   ; restore stack context
    ret                     ; return

; Warning remove
section .note.GNU-stack noalloc noexec nowrite progbits

