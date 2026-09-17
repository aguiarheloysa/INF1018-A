  .data
  s1: .string "ls -ls"

  .text
  .globl main /* prototipo da funcao main */
  main:
  /* prologo */
    pushq %rbp
    movq  %rsp, %rbp
    subq  $16, %rsp


  /* coloque seu codigo aqui */
    movq $s1, %rdi
    call system 

  /* finalizacao */
    movl $0, %eax /*retorno de uma funcao eh sempre registrador eax */
    leave
    ret