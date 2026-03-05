section .data
    msg db "lol", 0
    msg db "hello", 10


section .text
    global _start
    global main
    
ft_strlen:
    mov rax, 0
    jmp .loop

.loop:
    cmp byte [rdi + rax], 0
    je .done
    inc rax
    jmp .loop

.done:
    ret

.text :
    .globl ft_strlen

_start:
    mov rdi, "lol"
    call ft_strlen
    mov rdi, rax

.main :
    mov rdi, "lol"
    call ft_strlen
    mov rdi, rax