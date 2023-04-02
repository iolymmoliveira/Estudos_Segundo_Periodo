#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float horas, valorHora, salario;
	
	printf("Insira a quantidade de horas trabalhadas no mês: \n");
    scanf("%f", &horas);
    
    fflush(stdin);
    printf("Insira o valor da hora trabalhada: \n");
    scanf("%f", &valorHora);
	
    salario = horas * valorHora;
    
    printf("O salário a ser recebido é de R$ %.2f reais.\n", salario);
    
	system("pause");
    return 0;
}
