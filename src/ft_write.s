bits 64

global ft_write
extern __errno_location

%define WRITE_SYSCALL 1

section .text

ft_write:
    push rbp
    mov rbp, rsp
    mov rax, WRITE_SYSCALL
    syscall

    cmp rax, 0
    jl error
    leave
    ret

error:
    neg rax
    mov rdi, rax
    call [rel __errno_location wrt ..got]
    mov [rax], rdi
    mov rax, -1
    leave
    ret


; Warning remove
section .note.GNU-stack noalloc noexec nowrite progbits