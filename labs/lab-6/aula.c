#include <stdio.h>
#include <stdio.lib>
// código em linguagem de máquina só funciona em processador x64 linux
// cpu envia enderecos e a memoria retorna as instrucoes que serao lida
// registradores n fazem paret da memoria principal, os dados lidos serao armazenados em um dos registradores
// cada esquema tem um acesso diferente
// % refere-se a registrador, $ refere-se a constante ou label ()
// mov copia um val da origem para um destino (registrador ou memoria) NAO EXISTE operacao de memoria para memoria
// toda movimentacao precisa ser especificada, b é 1byte, w é 2byte, l é long 4bytes, q é 8bytes

// movl %edx,(%rbx) conteudo de memoria apontado por rbx
//movs o s indica que precisa ser considerado o sinal/ s é estender o sinal. Ex: movs %r8b,%r9w
//movz o z representa unsigned (valores sem sinais). Ex: movz %r8b, %r9w
//não existe operacaoes de memoria para memoria 
// soma: addl %ebx,%eax soma de eax +ebx e salav em eax
// sub:  subl %ebx,%eax como eh lido: eax - ebx e o resultado é salvo em eax

int main(void){
    
}



