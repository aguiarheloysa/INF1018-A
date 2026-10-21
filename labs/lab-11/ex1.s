/*
int novonum(void) {
  int minhalocal;
  printf("numero: ");
  scanf("%d",&minhalocal);
  return minhalocal;
}

    Var         Reg
minhalocal      r12d
return          eax

*/

.data
Sf:        .string "%d"
Printtext: .string "numero: "

.text
.globl novonum
novonum:
    pushq %rbp
    movq %rsp, %rbp
    
    subq $16, %rsp

    leaq Printtext(%rip), %rdi
    movl $0, %eax
    call printf

    leaq Sf(%rip), %rdi
    leaq -4(%rbp), %rsi
    movl $0, %eax
    call scanf

    movl -4(%rbp), %eax
    leave 
    ret


  
