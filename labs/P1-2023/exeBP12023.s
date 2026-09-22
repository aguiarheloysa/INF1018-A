/*
struct S
{
int v;
struct S *prox;
};
extern int norma[];
int boo(struct S *s, int n)
{
    int acum = 0;
    while (s)
    {
        s->v = acerta(norma, n+acum);
        acum += n;
        s = s->prox;
    }
    return acum;
}


*/


/*
    Var     Reg
    s       rdi  -> s é um ponteiro que aponta para uma struct
    n       esi  -> n é um inteiro
    acum    r12d  ->acum é um inteiro
    i       ebx   -> i é um inteiro que vai percorrer 
    temp    r15d  -> variavel temporaria para efetuar as somas
*/

.text
.globl boo
boo:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp

    movq %r12, -8(%rbp)
   /* movq %rbx, -8(%rbp) */
    movq %r15, -16(%rbp)
    
    movl $0, %r12d
    movl $0, %r15d
    

WHILE:   
    cmpq $0, %rdi
    jge FORA_WHILE
/*temp =  */
    addl %r12d, %r15d

    movq %rdi, -24(%rbp)
    movl %esi, -28(%rbp)
    