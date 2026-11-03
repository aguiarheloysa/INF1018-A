#include <stdio.h>
#include <math.h>
float foo1( float a, float b);

int main(void){
    float f1 = 22220000.78;
    float f2 = 5.72;
    // printf("numero-- %f\n", f1 );
    float retorno = foo1(f1, f2);
    printf("retorno - %.2f", retorno);

    return 0;
}
