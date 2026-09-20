#include <stdio.h>

int foo (int *a, int n);

int main (void) {
    int v[3] = {1, 2, 0};
    foo(v, 3);
    for (int i=0; i<3; i++){
        printf("%d\n", v[i]);
    }
   return 0;
}