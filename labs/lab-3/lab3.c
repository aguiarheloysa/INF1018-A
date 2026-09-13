#include <stdio.h>

int odd_ones(unsigned int x){
  int n = 0;
  for (int i =0; i< 32; i++){
    if (x & 1){
      n ++;
    }
    x = x >> 1;
  }
  
  if ((n & 1) == 0){
    return 0;
  }
  else{
    return 1;
  }
}

int main(void) {
  unsigned int x = 0x87654321;
  unsigned int y, z;

  /* o byte menos significativo de x e os outros bits em 0 */
  y = x & 0xFF; //obtem o byte menos significativo
  printf("o valor de y = %08x\n", y);

  /* o byte mais significativo com todos os bits em '1' 
     e os outros bytes com o mesmo valor dos bytes de x */
  z = (x | 0xFF000000); // o operador XOR ou | forca o byte mais significativo a virar ff e mantem os outros bytes intactos

  printf("%08x %08x\n", y, z);

  printf("%x tem numero %s de bits\n",0x01010101,odd_ones(0x01010101) ? "impar":"par");
  printf("%x tem numero %s de bits\n",0x01030101,odd_ones(0x01030101) ? "impar":"par");
}
