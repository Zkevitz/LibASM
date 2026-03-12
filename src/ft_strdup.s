bits 64

global ft_strdup 

extern malloc
extern ft_strlen
extern ft_strcpy

section .text

ft_strdup :
    push rdi                            ; sauvegarde du parametre

    call [rel ft_strlen wrt ..got]      ; rax == strlen(s)
    inc rax                             ; +1 rax pour '\0'

    mov rdi, rax                        ;  place la taille en argument pour malloc
    call [rel malloc wrt ..got]         ; rax = adresse de la memoire alloué (ptr)

    test rax, rax                       ; verfie une potentiel erreur de retour de malloc
    jz .return_null

    mov rdi, rax                        ; mettre la memoire alloué par malloc en destination de ft_strcpy
    pop rsi                             ; mettre la sauvegarde de rdi dans rsi
    call [rel ft_strcpy wrt ..got]
    ret

.return_null :
    pop rdi                             ; annule la sauvegarde du parametres (push rdi)
    ret