#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float valorLitro, valorAbastecer, litros;
	
	printf("Insira a quantidade de dinheiro que possui para abastecer: \n");
    scanf("%f", &valorAbastecer);
    
    fflush(stdin);
    printf("Insira o valor do litro da Gasolina R$: \n");
    scanf("%f", &valorLitro);
	
    litros = valorAbastecer / valorLitro;
    
    printf("A quantidade abastecida em Litros é: %.2f L.\n", litros);
    
	system("pause");
    return 0;
}
