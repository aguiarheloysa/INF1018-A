#include <stdio.h>
#include <stdlib.h>
#define getsig(x)  ((x)>>31 & 1)
#define getexp(x)  ((x)>>23 & 0xff)
#define getfrac(x) ((x) & 0x7fffff)
#define makefloat(s,e,f) ((s & 1)<<31 | (((e) & 0xff) << 23) | ((f) & 0x7fffff))

typedef union { 
  float f;
  unsigned int i;
 } U;

float float2(float f){
    U u;
    u.f = f;
    unsigned int u2 = u.i;
    unsigned int bit_s = ((u2)>>31 &1); //pega o bit de sinal
    unsigned int exp = ((u2)>>23 & 0xff); //pega a parte do expoente
    unsigned int part_frac = ((u2) & 0x7fffff); //pega a parte fracionaria
    //ao multiplcar 2 pelo expoente de x* 2^y estamos fazendo: x* 2^y *2, ou seja, só o expoente esta sendo incrementado
    //exp corresponde a parte do expoente do float que está armazenado em hexa
    exp = exp +1;
    // U f_convertido;
    u2 = ((bit_s & 1)<<31 | (((exp) & 0xff) << 23) | ((part_frac) & 0x7fffff));
    u.i = u2;
    float f_convertido = u.f;
    return f_convertido;
}

float int2float(int i){
    U u1;
    U u2;
    
    if (i = 0){
        return u1.f = 0;
    }
    int bit_s;
    if (i<0){
        bit_s = 1;
        i*(-1); //transforma o numero em positivo
    }
    else{
        bit_s =0;
    }
    unsigned int bin[32];
    bin[0] = bit_s; //preenche com o bit representativo de sinal
    int k = 1;
    int j = 10;
    while(i>0){
        int r = i%2;
        bin[j] = r;
        bin[k]= r;
        i = i/2;
        k++;
        j++;
    }



}


int main(void){
    float f1 = 25.75;
    printf("%f\n ", float2(f1));
    
    int i;
    printf("\n******** int2float ****************\n");
    i = 0;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = 1;  
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = -1;  
    printf(" %d -> %10.4f\n", i, int2float(i));
    i = 0x7fffffff;  
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = -i;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = 12345;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = -12345;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    return 0;
}