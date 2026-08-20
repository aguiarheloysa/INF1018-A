#include <stdio.h>

void dump (void *p, int n) {
  unsigned char *p1 = p;
  while (n--) {
    printf("%p - %02x\n", p1, *p1);
    p1++;
  }
}

void dump1 (void *p, short n){
    unsigned short *p1 = p;
    while (n--) {
        printf("%p - %02x\n", p1, *p1);
        p1++;
  }
}

void dump2 (void *p, long n){
    unsigned char *p1 = p;
    while (n--) {
        printf("%p - %02x\n", p1, *p1);
        p1++;
  }
}

void dump3 (void *p, int n){
    unsigned int *p1 = p;
    while (n--) {
        printf("%p - %02x\n", p1, *p1);
        p1++;
  }
}

int main (void) {
  // printf("-------testando com o valor int i = 10000-------\n");
  // int i = 10000;
  // dump(&i, sizeof(i));
  // printf("-------testando com um novo valor: int a = 2147483647-------\n");
  // int a = 2147483647;
  // dump(&a, sizeof(a));
  // dump(&a, sizeof(a));
  // printf("-------testando com um novo valor: long x = 9223372036854775807-------\n");
  // long x = 9223372036854775807;
  // dump(&x, sizeof(x));
  // printf("-------testando com um novo valor: long y = -9223372036854775807-------\n");
  // long y = -9223372036854775807;
  // dump(&y, sizeof(y));
  // printf("-------testando com um ponteiro para long-------\n");
  // dump2(&y, sizeof(y));
  // printf("-------testando com um valor short t = 32767-------\n");
  // short t = 32767;
  // dump(&t, sizeof(t));
  // printf("-------testando com um novo valor de short s = -32765-------\n"); 
  // short s = -32765;
  // dump(&s, sizeof(s));
  // printf("-------testando com um ponteiro para short-------\n");
  // dump1(&t, sizeof(t));
  // printf("-------testando com o valor char c = 'a'-------\n");
  // char c = 'a';
  // dump(&c, sizeof(c));
  // printf("-------testando com um novo valor: char c1 = '97'-------\n");
  // char c1 = 97;
  // dump(&c1, sizeof(c1));
  // printf("-------testando com um novo valor: char p[] = 7509-------\n");
  // char p[] = "7509";
  // dump(p, sizeof(p));
  // printf("-------testando com um novo valor: char p[] = heloysa-------\n");
  // char p1[] = "heloysa";
  // dump(&p1, sizeof(p1));
  // printf("-------testando com um novo valor: char p2 = ,-------\n");
  // char p2 = ',';
  // dump(&p2, sizeof(p2));
  // printf("-------testando com um novo valor: char p3 = A-------\n");
  // char p3 = 'A';
  // dump(&p3, sizeof(p3));
  // printf("-------testando com um novo valor: char p4 =  -------\n");
  // char p4 = ' '; 
  // dump(&p4, sizeof(p4));
  // printf("-------testando com um novo valor: char p5 = -------\n");
  // char p5 = '\n';
  // dump(&p5, sizeof(p5));
  // printf("-------testando com um novo valor: char p6 = $-------\n");
  // char p6 = '$';
  // dump(&p6, sizeof(p6));
  
//   comando para compilar: gcc -Wall -o <nome do executavel> <nomedo arq fonte>
// comando para executar: ./<nome do executavel>

  return 0;
}