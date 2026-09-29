
.globl fat
fat:
    pushq %rbp /* salva o RA da funcao chamadora */
    movq %rsp, %rbp /* cria a base do RA da funcao chamada*/
    subq $16, %rsp /* abre espaço ara o RA da funcao chamada */

/* if (n==0) */
    cmpl $0, %edi
    jnz ELSE


/*  temp = 1 */
    movl $1, %eax

    jmp FORA_IF

ELSE:
    /*  salvar os registradores que nao sao callee-saved */
    movl %edi, -4(%rbp)

/* temp = n -1*/
/* temp = n */
/*    movl %edi, %edi */
/* temp -= 1    */
    decl %edi

/* chama o */
    call fat

/*  restaurar os registradores nao callee-saved que foram salvos*/
    movl -4(%rbp), %edi

/* temp = n x temp*/
    imull %edi, %eax

FORA_IF:

/*  return temp  */
    /* nao faz nada porque o valor de retorno ja esta no eax */
    /* restaurar o valor dos registradores calle-saved que foram salvos    */
    /* nao foi usado nenhum calllee-saved, nao precisa restaurar nada     */

    leave 
    ret