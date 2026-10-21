/*
var local: vetor de 4 inteiros
a: ponteiro apra inteiro
i: inteiro
Var         Reg
local       rdi
a           r12
i           r15d
num         edi
*/
.text
.globl bemboba
bemboba:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp

    movq %r12, -8(%rbp)     /*  guarda r12  */
    movq %r15, -16(%rbp)    /*  guarda r15  */
    /*  guarda o parametro num em um registrador temporario  */
    movl %edi, %r11d
    leaq -32(%rbp), %r12 /*  a = local (endereco inicial do vetor na pilha) */
    movl $0, %r15d  /*  i = 0 */
WHILE:
    cmpl $4, %r15d
    jge FORA_WHILE

    movl %r11d, (%r12)  /* *a = num */
    addq $4, %r12   /*  a++ */
    inc %r15d       /*  i++ */
    jmp WHILE

FORA_WHILE:
    leaq -32(%rbp), %rdi /* primeiro arg de addl */
    movl $4, %esi   /* segundo arg de addl */
    call addl

    movq -8(%rbp), %r12
    movq -16(%rbp), %r15
    leave
    ret
