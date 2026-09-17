.globl add

.text

add:
/* 1 argumento int: %edi */
/* 2 argumento int: %esi */
/* 3 argumento int: %edx */

/*      CRIAR RA        */
 pushq %rbp /* move o endereço do topo da pilha para um valor multiplo*/
 movq %rsp, %rbp
 subq $32, %rsp /* aloca espaço para RA */

