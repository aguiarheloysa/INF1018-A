#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int string2num (char *s, int n) {
  int a = 0;
  int ret = 0;
  int multiplicador = 1; //é numero neutro da multiplicacao
  
  // usando a funcao que ja convertia a string para número decimal
  for (; *s; s++) 
    a = a * 10 + (*s - '0');

  if (n >= 2 && n <= 10) {
    while (a > 0) {
      int resto = a % n;
      ret = ret + (resto * multiplicador);
      multiplicador *= 10;
      
      a = a / n; 
    }
    return ret;
  }
  else{
    printf("A base nao esta entre 2 e 10.");
    exit(1);
  }
}

int main (void) {
  printf("%d\n", string2num("777", 8));  
  printf("%d\n", string2num("777", 10)); 
  return 0;
}