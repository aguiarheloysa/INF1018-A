#include <stdio.h>

struct X {
    int a;
    short b;
    int c;
};

struct X1{
  char c1;
  int i;
  char c2;
};

struct X2 {
  long l;
  char c;
};

struct X3 {
  int i;
  char c1;
  char c2;
};

struct X4 {
  struct X2 x;
  char c;
};

struct X5 {
  char c1;
  char c2;
  char c3;
};

struct X6 {
  short s1;
  int i;
  char c[3];
  short s2;
};

union U1 {
  int i;
  char c[5];
};

union U2 {
  short s;
  char c[5];
};

void dump (void *p, int n) {
  unsigned char *p1 = p;
  while (n--) {
    printf("%p - %02x\n", p1, *p1);
    p1++;
  }
}

int main (void){
    // int b[2];
    // short a[2][3];

    // printf("tamanho de b = %ld\n", sizeof b);
    // printf("tamanho de a = %hd\n", sizeof a);

    // int i,j;
    // short a[2][3];
    // int b[2];

    // for (i=0;i<2;i++) {
    //     b[i] = i;
    //     for (j=0;j<3;j++)
    //     a[i][j] = 3*i+j;
    // }

    // printf ("b: \n");
    // dump (b, sizeof(b));
    // printf ("a: \n");
    // dump (a, sizeof(a));

    // struct X x;
    // printf("estrutura x -\n");
    // printf("tamanho da estrutura x = %ld\n", sizeof(x));
    // dump(&x, sizeof(x));
    // x.a = 0xa1a2a3a4;
    // x.b = 0xb1b2;
    // x.c = 0xc1c2c3c4;

    // printf("tamanho da estrutura x = %ld\n", sizeof(x));
    // dump(&x, sizeof(x));

    // struct X1 x1;
    // printf("estrutura X1 (sem preenchimento)- %ld\n", sizeof(x1));
    // dump(&x1, sizeof(x1));
    // x1.c1 = 0xc1;
    // x1.i = 0x01020304;
    // x1.c2 = 0xc2;
    // printf("estrutura X1 preenchida- %ld\n", sizeof(x1));
    // dump(&x1, sizeof(x1));

    // struct X2 x2;
    // printf("estrutura X2 (sem preenchimento)- %ld\n", sizeof(x2));
    // dump(&x2, sizeof(x2));
    // x2.l = 0x0102030405060708;
    // x2.c = 0xc1;
    // printf("estrutura X2 preenchida- %ld\n", sizeof(x2));
    // dump(&x2, sizeof(x2));

    // struct X3 x3;
    // printf("estrutura X3 (sem preenchimento)- %ld\n", sizeof(x3));
    // dump(&x3, sizeof(x3));
    // x3.i = 0x01020304;
    // x3.c1 = 0xc1;
    // x3.c2 =  0xc2;
    // printf("estrutura X3 preenchida- %ld\n", sizeof(x3));
    // dump(&x3, sizeof(x3));

    // struct X4 x4;
    // printf("estrutura X4 (sem preenchimento)- %ld\n", sizeof(x4));
    // dump(&x4, sizeof(x4));
    // x4.x.l = 0x0102030405060708;
    // x4.x.c = 0xc1;
    // x4.c =  0xc2;
    // printf("estrutura X4 preenchida- %ld\n", sizeof(x4));
    // dump(&x4, sizeof(x4));

    // struct X5 x5;
    // printf("estrutura X5 (sem preenchimento)- %ld\n", sizeof(x5));
    // dump(&x5, sizeof(x5));
    // x5.c1 = 0xc1;
    // x5.c2 = 0xc2;
    // x5.c3 =  0xc3;
    // printf("estrutura X5 preenchida- %ld\n", sizeof(x5));
    // dump(&x5, sizeof(x5));

    // struct X6 x6;
    // printf("estrutura X6 (sem preenchimento)- %ld\n", sizeof(x6));
    // dump(&x6, sizeof(x6));
    // x6.s1 = 0x0102;
    // x6.i = 0x01020304;
    // x6.c[0] =  0xc1;
    // x6.c[1] = 0xc2;
    // x6.c[2] = 0xc3;
    // x6.s2 = 0x0102;
    // printf("estrutura X6 preenchida- %ld\n", sizeof(x6));
    // dump(&x6, sizeof(x6));

    union U1 u1;
    printf("union u1 de tamanho %ld\n", sizeof(u1));
    dump(&u1, sizeof(u1));
    u1.i = 0x01020304;
    // u1.c[0] = 0xc1;
    // u1.c[1] = 0xc2;
    // u1.c[2] = 0xc3;
    // u1.c[3] = 0xc4;
    // u1.c[4] = 0xc5;
    printf("union u1 de tamanho %ld\n", sizeof(u1));
    dump(&u1, sizeof(u1));
    union U2 u2;
    u2.s = 0x0102;
    u1.c[0] = 0xc1;
    u2.c[1] = 0xc2;
    u2.c[2] = 0xc3;
    u2.c[3] = 0xc4;
    u2.c[4] = 0xc5;
    printf("union u2 de tamanho %ld\n", sizeof(u2));
    dump(&u2, sizeof(u2));

    return 0;
}