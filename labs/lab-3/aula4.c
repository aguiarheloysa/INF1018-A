//olhar o bit mais significativo, se for 0 é positivo e se for 1 é negativo
//unsigned char é sempre positivo
// remove o sinal, converte em binario, inverte bit a bit, soma 1, olha para o bit mais significativo


#include <stdio.h>

int main (void){
    char a;
    unsigned char b;

    short i;
    unsigned short j;
    a = 127;  //0111 1111
    b = 255;  //1111 1111

    printf("a = %hhd, b= %hhu\n", a, b);

    a++;  // a<- 1000 0000 (128 em binario)
    printf("a = %hhd, b= %hhu\n", a, b);

    a = b;
    printf("a = %hhd, b= %hhu\n", a, b);
    printf("a = %hhd, b= %hhu\n", a, a);

    int x;
    unsigned int y;
    a =-25;
    b = a;
    printf("a = %hhd, b= %hhu\n", a, b);

    x = 300;
    y = x;

    printf("a = %d, b= %u\n", x, y);
    
    x = -129;
    y = x;

    printf("x = %d, y= %u\n", x, y);

    i= x;
    j= x;
    printf("i = %hd, j= %hu\n", x, y);
    printf("a = %hhd, b= %hhu\n", a, b);
    return 0;
}