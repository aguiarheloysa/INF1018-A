/*
double sin(double x);
double cos(double x);

float foo1 (float a, float b) {
  return sin(a) + b;
}

DIC:   
    REG  - FLOAT/DOUBLE
    a       xmm0
    b       xmm1  
*/
.data
Sf1:  .string "%.2f\n" /* primeira string de formato para printf */
.text
.globl foo1
foo1:
    pushq %rbp
    movq %rsp, %rbp

    cvtss2sd %xmm0, %xmm0   /* converte de float para double e salva no xmm0*/
    call sin        /*chama a funcao seno passando o argumento xmm0*/
    movq $Sf1, %rdi
    movl $1, %eax
    call printf
    cvtsd2ss %xmm0, %xmm0   /* converte em float para multiplicar por b que é float*/
    addss %xmm1, %xmm0 /*    multiplica o valor de mm0 por mm1  e salva em mm0 que será retornado*/

    leave
    ret
