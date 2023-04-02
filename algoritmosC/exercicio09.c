#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	int codigo, idade;
	float peso, altura;
	
	setlocale(LC_ALL, "");
	
	printf("Insira o codigo do competidor: \n");
    scanf("%d", &codigo);
    
    printf("Insira a idade: \n");
    scanf("%d", &idade);
    
    printf("Insira o peso: \n");
    scanf("%d", &peso);
    
    printf("Insira a altura: \n");
    scanf("%f", &altura);
	
    printf("O/a competidor(a) de código %d está com %d anos de idade, pesa %.2f e tem %.2f de altura.\n", codigo, idade, peso, altura);
    
	system("pause");
    return 0;
}
