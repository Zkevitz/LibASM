bits 64

global ft_strlen    

section .text

ft_strlen:
    push rbp
    mov rbp, rsp
    mov rax, 0
    jmp .loop

.loop:
    cmp byte [rdi + rax], 0
    je .end
    inc rax
    jmp .loop
.end:
    leave
    ret

; Warning remove
section .note.GNU-stack noalloc noexec nowrite progbits

