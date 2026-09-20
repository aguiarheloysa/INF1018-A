.text
.globl add

add:
/* 1 argumento int: %edi */
/* 2 argumento int: %esi */
/* 3 argumento int: %edx */

/*      CRIAR RA        */ 
 addl %esi, %edi        /* %edi = %edi + %esi  */
 addl %edi, %edx
 movl %edx, %eax

 ret
 
