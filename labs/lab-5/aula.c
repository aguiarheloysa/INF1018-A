#include <stdio.h>

//representacao de arrays: alocacao contigua na memoria, ou seja, nao há espaço vazio entre os elementos
//o vetor comeca sempre no menor endereco dele
//endereco de i eh calculado da seguinte maneira: endereco de a (ou endereco mais baixo) + i*sizeof(T) onde T é um tipo generico
union U {
    char c;
    long l;
};

int main(void){
    int v[10];
    int *p;
    printf("Tamanho de v = %ld\n", sizeof v);
    printf("Tamanho de p = %ld\n", sizeof p);
    printf("Tamanho de inteiro = %ld\n", sizeof(int));

    v[0] = 55;
    v[1] = 'A';
    printf("v[0] = %d - v[1] = %d\n", v[0], v[1]);
    printf("v[0] = %c - v[1] = %c\n", v[0], v[1]);
    
    p = v; //conteudo apontado por p
    p = (int *) 1000;
    printf("p = %ld, p+4 = %ld\n", p, p+4);

    // *****ESTRUTURAS
    //as variaveis sao guardadas em enderecos multiplos de seu tamanho
    //cada campo da estrutura sera guardada em um multiplo de seu tamanho
    //padding faz parte da estrutura e sao espacos nao preenchidos, sao usados para alinhar a estrutura.

    struct s1 {
        int a;
        char b;
        int c;
    };

    struct s2 {
        char a;
        int b;
        int c;
    };

    struct s3 {
        int i1;
        char c1;
        int i2;
        char c2;
    };

    struct s4 {
        int i1;
        char c1;
        char c2;
        int i2;
    };

    printf("o tamanho de s1 = %ld\n", sizeof(struct s1));
    printf("o tamanho de s2 = %ld\n", sizeof(struct s2));
    printf("o tamanho de s3 = %ld\n", sizeof(struct s3));
    printf("o tamanho de s4 = %ld\n", sizeof(struct s4));


    //************** UNION
    union U x;
    x.c = 1;
    x.l = 2;

    printf("x.c = %hhd, x.l = %ld\n", x.c, x.l);
    printf("&x.c = %p, &x.l = %p\n", &(x.c), &(x.l));

    x.l = 0x12345678;
    printf("x.c = %02X, x.l = %08X\n", x.c, x.l);

    return 0;
}
