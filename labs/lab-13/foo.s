/*
int foo (int x) {
  return x+1;
}
dicionario
VAR    REG
x       edi
temp    r12
eax
*/


.text
.globl foo
foo:
    pushq %rbp
    movq %rsp,%rbp

    subq $16, %rsp
    movq %r12, -8(%rsp)

    movl %edi, %r12d
    incl %r12d
    movl %r12d, %eax

    movq -8(%rsp), %r12

    leave 
    ret
