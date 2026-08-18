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
  return 0;
}