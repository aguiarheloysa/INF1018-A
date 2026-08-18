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
    unsigned long *p1 = p;
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
  int i = 10000;
  dump(&i, sizeof(i));
  printf("-------testando com um novo valor-------\n");
  int a = 500;
  dump(&a, sizeof(a));
  printf("-------testando com um ponteiro para int-------\n");
  dump3(&a, sizeof(a));
  printf("-------testando com um novo valor-------\n");
  long x = 2147483647;
  dump(&x, sizeof(x));
  printf("-------testando com um novo valor-------\n");
  long y = 2147483647;
  dump(&y, sizeof(y));
  printf("-------testando com um ponteiro para long-------\n");
  dump2(&y, sizeof(y));
  printf("-------testando com um novo valor-------\n");
  short t = 32767;
  dump(&t, sizeof(t));
  printf("-------testando com um novo valor de short-------\n"); 
  short s = -32767;
  dump(&s, sizeof(s));
  printf("-------testando com um ponteiro para short-------\n");
  dump1(&t, sizeof(t));
  printf("-------testando com um novo valor-------\n");
  char c = 'H';
  dump(&c, sizeof(c));
  printf("-------testando com um novo valor-------\n");
  char p[] = "7509";
  dump(p, sizeof(p));
//   comando para compilar: gcc -Wall -o <nome do executavel> <nomedo arq fonte>
// comando para executar: ./<nome do executavel>

// 1- A memória é um array de bits. Alguns tipos de declaração de variável irão armazenar valores diferentes porque cada tipo representa bytes diferentes. Ao executar uma chamada dump, o while vai printar bit a bit, como podemos ver nas execuções a seguir:

// a) um inteiro é representado por 4 bytes, ou seja, na memória, 
// ele é representado por 32bits, mas esses dados são armazenados como binário (0 e 1)

// b) um long é representado por 8 bytes, ou seja, na memória ele é representado por 32 bits ou 64 bits se for little endian, mas esses dados são armazenados como binário (0 e 1)

// c) um short ocupa 2 bytes, ele é utilizado para armazenar valores pequenos. Na memória, é representado por 16 bits, mas esses dados são armazenados como binário (0 e 1)

// d) um char é representad por 
  return 0;
}