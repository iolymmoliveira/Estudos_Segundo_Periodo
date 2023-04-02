#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float salario, salarioAumento, salarioFinal;
	
	printf("Informe o valor de seu salário em R$: \n");
    scanf("%f", &salario);
    
    salarioAumento = salario * 1.15;
    
    salarioFinal = salarioAumento * 0.85;
    
    printf("Salário Inicial: %.2f \n", salario);
    printf("Salário com Aumento: %.2f \n", salarioAumento);
    printf("Salário Final: %.2f \n", salarioFinal);
    
	system("pause");
    return 0;
}
