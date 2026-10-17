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
    # Prólogo
    pushq %rbp
    movq %rsp, %rbp
    
    # Alinha a pilha em 16 bytes (subtraindo 16)
    subq $16, %rsp

    # 1. Imprimir o prompt "numero: "
    leaq Printtext(%rip), %rdi
    movl $0, %eax
    call printf

    # 2. Chamar o scanf("%d", &minhalocal)
    # Salvamos 'minhalocal' em -4(%rbp) ou -12(%rbp)
    leaq Sf(%rip), %rdi
    leaq -4(%rbp), %rsi
    movl $0, %eax
    call scanf

    # 3. Mover o valor lido para %eax (o registrador de retorno do C)
    movl -4(%rbp), %eax

    # Epílogo
    leave 
    ret


  
