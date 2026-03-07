bits 64

global ft_write
extern __errno_location

%define WRITE_SYSCALL 1

section .text

ft_write:
    push rbp
    mov rbp, rsp                    ; save stack context
    mov rax, WRITE_SYSCALL          ; syscall write number
    syscall                         ; invoke syscall

    cmp rax, 0                      ; compare return of syscall with 0
    jl error                        ; if negative, jump to error
    leave                           ; restore stack context
    ret                             ; return

error:
    neg rax                         ; negate return value
    mov rdi, rax                    ; move negated value to rdi
    call [rel __errno_location wrt ..got]       ; get address of errno
    mov [rax], rdi                              ; store negated value in errno
    mov rax, -1                                 ; return -1
    leave                                       ; restore stack context
    ret                                         ; return


; Warning remove
section .note.GNU-stack noalloc noexec nowrite progbits