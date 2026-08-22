#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>

int string2num (char *s, int n) {
  int ret = 0;

  for (; *s; s++) {
    char c = tolower((unsigned char)*s);
    int digito;

    if (isdigit(c)) {
      digito = c - '0';
    } else if (islower(c)) {
      digito = c - 'a' + 10;
    } else {
      printf("Caractere invalido na entrada: %c\n", *s);
      exit(1);
    }

    ret = ret * n + digito;
  }

  return ret;
}

int main (void) {  
  printf("%d\n", string2num("1a", 16));   
  printf("%d\n", string2num("a09b", 16)); 
  printf("%d\n", string2num("z09b", 36)); 
  return 0;
}