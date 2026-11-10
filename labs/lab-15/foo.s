/*
float foo (double a, float b) {
  double c = double a + float b;
  double d = double a - float b;
  float e = c * d;
  return (a+b)*(a-b);
}

    VAR -- REG
    a       xmm0
    b       xmm1

*/
.data
Sf: .string "%.2f\n"
.text
.globl foo
foo:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp

    movsd %xmm0, -8(%rbp)
    movss %xmm1, -12(%rbp)

    cvtss2sd %xmm1, %xmm1
    addsd %xmm1, %xmm0 /* soma xmm0 com xmm1 e salva em xmm0*/
    movsd %xmm0, %xmm2 /*  guarda a soma em xmm2*/
    
    movsd -8(%rbp), %xmm0
    movss -12(%rbp), %xmm1
    cvtss2sd %xmm1, %xmm1
    subsd %xmm1, %xmm0
    movsd %xmm0, %xmm3
    mulsd %xmm2, %xmm3

    movsd %xmm3, %xmm0

    cvtsd2ss %xmm0, %xmm0 /*    converte float em double porque a funcao retorna flaot */

    leave
    ret
