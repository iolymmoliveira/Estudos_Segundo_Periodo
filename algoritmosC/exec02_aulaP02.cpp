#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float horas, valorHora, salario;
	
	printf("Insira a quantidade de horas trabalhadas no m�s: \n");
    scanf("%f", &horas);
    
    fflush(stdin);
    printf("Insira o valor da hora trabalhada: \n");
    scanf("%f", &valorHora);
	
    salario = horas * valorHora;
    
    printf("O sal�rio a ser recebido � de R$ %.2f reais.\n", salario);
    
	system("pause");
    return 0;
}
