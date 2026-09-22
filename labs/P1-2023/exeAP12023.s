/*
Prova 2023.2
resolucao da questao de traducao para assembly
int acerta (int u[], int i)
{
return u[i];
}

*/

/*  Var     Registrador
    u       rdi
    i       esi

*/


.text
.globl acerta
acerta:
    pushq %rbp /*salva o RA da chamadora e alinha com um multiplo de 16 */
    movq %rsp, %rbp /*criando o RA da funcao */

    imul $4, %esi 
    movslq %esi, %rsi /* estende um registrador de 4bytes com sinal para 8bytes, porque rdi é um reg de 8bytes*/
    addq %rsi, %rdi /* soma o rsi com o rdi e salva em rdi*/

    movl (%rdi), %eax /* pega o conteudo de rdi e copia para o registrador de retorno*/
    
    movq %rbp, %rsp
    popq %rbp
    ret