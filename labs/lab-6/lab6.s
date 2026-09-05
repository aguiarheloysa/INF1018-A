
.data
nums: .int  10, -21, -30, 45
Sf: .string "%d\n"
.text
.globl  main
main:
  movl  $0, %ebx
  movq  $nums, %r12 

L1:
  cmpl  $4, %ebx
  je  L2

  movl (%r12), %eax
  movq    $Sf, %rdi
  movl    %eax, %esi
  call  printf

  addl  $1, %ebx
  addq  $4, %r12
  jmp  L1

L2:
  movq  $0, %rax  /* rax = 0  (valor de retorno) */
  /* movq  -8(%rbp), %rbx */
  movq  -16(%rbp), %r12
  leave
  ret  


