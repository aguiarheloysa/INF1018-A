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
    unsigned int val;
    int e= 31; //valor do bit mais significativo
    
    if (i == 0){
        u1.i = 0;
        return u1.f;
    }
    int bit_s = 0;
    if (i<0){
        bit_s = 1;
        val= -(unsigned int )i; //transforma o numero em positivo sem ocorrer overflow
    }
    else {
        val = i;
    }
    while ((val & (1u << e)) == 0){
        e--;
    }
    unsigned int t;
    unsigned int exp = e + 127; //bias = 127
    if (e <= 23){
        t = val <<(23 -e);
    }
    else{
        int desloc = e - 23;

        t = val >> desloc;

        unsigned int resto = val & ((1u << desloc) - 1);
        unsigned int metade = 1u << (desloc - 1);

        // Arredondamento para o mais próximo, empate para par
        if (resto > metade ||
            (resto == metade && (t & 1))) {
            t++;
        }
        if (t == (1u << 24)) {
            t >>= 1;
            e++;
            exp++;
        }
    }
    unsigned int frac = t & 0x7fffff;;
    unsigned int u2 = 0;
    u2 |= (bit_s << 31);
    u2 |= (exp << 23);
    u2 |= frac;
    u1.i = u2;
    float f_convertido = u1.f;
    return f_convertido;
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