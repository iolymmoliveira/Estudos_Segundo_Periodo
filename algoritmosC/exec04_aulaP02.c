#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float salario, salarioAumento, salarioFinal;
	
	printf("Informe o valor de seu sal�rio em R$: \n");
    scanf("%f", &salario);
    
    salarioAumento = salario * 1.15;
    
    salarioFinal = salarioAumento * 0.85;
    
    printf("Sal�rio Inicial: %.2f \n", salario);
    printf("Sal�rio com Aumento: %.2f \n", salarioAumento);
    printf("Sal�rio Final: %.2f \n", salarioFinal);
    
	system("pause");
    return 0;
}
