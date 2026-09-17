.data
nums: .int 3, -5, 7, 8, -2
s1:   .string "%d\n"  /* printf */

.text
.globl main
main:
/* prologo */
   pushq %rbp
   movq  %rsp, %rbp
   subq  $16, %rsp
   movq  %rbx, -8(%rbp)
   movq  %r12, -16(%rbp)

/* coloque seu codigo aqui */

   movq $nums, %rbx /* o ponteiro p aponta para o endereço de nums */

   movl $0, %r12d /* o contador i inicializa com 0 */

   /* while(i<5) */
WHILE:
   cmpl $5, %r12d
   jge FORA_WHILE /* jump if greater or equal */
   

   movl (%rbx), %edi /* primeiro parametro de filtro */
   ; movl %r12d, %esi /* segundo parametro de filtro */
   movl $1, %esi 
   call filtro

   movq $s1, %rdi
   movl %eax, %esi
   call printf 

   addq $4, %rbx /* aumenta o enderecamento em 4bytes equivale a p++  */
   incl %r12d /* incrementa o i em uma unidade, equivale a i++  */



   jmp WHILE


/* finalizacao */
FORA_WHILE:
   movq -8(%rbp), %rbx
   movq -16(%rbp), %r12
   movl $0, %eax
   leave
   ret
