#include <stdio.h>

void dump (void *p, int n) {
  unsigned char *p1 = p;
  while (n--) {
    printf("%p - %02x\n", p1, *p1);
    p1++;
  }
}

struct S{
    char c;
    short s;
    short *p;
    int i;
};

int main(void){
    struct S s;
    s.c = 'a';
    s.s = 12;
    s.p = &s.s;
    s.i = -20;
    printf("sizeof s: %ld\n", sizeof(s));
    dump(&s, sizeof(struct S));

    return 0;

}