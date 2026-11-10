#include <stdio.h>
#include <math.h>
float foo (double a, float b);
float foo1( float a, float b);

int main(void){
    float f1 = 22.78;
    // float f2 = 160.72;
    // printf("numero-- %f\n", f1 );
    // float seno_a = sin(f1);
    // printf("seno-a %.2f\n", seno_a);
    // printf("soma: %f + %f = %.2f", seno_a, f2, (seno_a+f2));
    double f0 = 100.52;
    float ret1 = foo(f0, f1);
    printf("retorno foo: %.2f\n", ret1);

    // float retorno = foo1(f1, f2);
    // printf("retorno: %.2f\n", retorno);

    return 0;
}
