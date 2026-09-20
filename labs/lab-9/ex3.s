/*
 void foo (int a[], int n) {
   int i;
   int s = 0;
   for (i=0; i<n; i++) {
     s += a[i];
     if (a[i] == 0) {
       a[i] = s;
       s = 0;
     }
   }
*/

.text
.globl foo

/*   VAR      Reg 
    a[]         rdi
    n           esi
    i           r15d
    s           ebx

*/


foo:
    pushq %rbp
    movq %rsp, %rbp
    sub $16, %rsp
    

    movl %r15d, -8(%rbp)
    movl %ebx, -8(%rbp)

    movl $0, %r15d  /* i = 0    */
    addl $0, %ebx   /* s = 0    */

WHILE:
    cmpl %esi, %r15d
    jge FORA_WHILE
    
    addl (%rdi), %ebx

    cmpl $0, (%rdi)
    jge FORA_IF
    addl (%rdi), %ebx

FORA_IF:
    addq    $8, %rbx
    incl    %r15d

FORA_WHILE:
    
    /* foo eh do tipo void, então nao modificamos o registrador de retorno */
    movl -8(%rbp), %r15d
    movl -8(%rbp), %ebx
    leave
    ret