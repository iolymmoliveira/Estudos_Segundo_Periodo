#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float horasTrabalhadas, mediaDia;
	
	printf("Informe a quantidade de horas trabalhadas em 5 dias: \n");
    scanf("%f", &horasTrabalhadas);
    
    mediaDia = horasTrabalhadas / 5;
    
    printf("A média de horas trabalhas por dia é de: %.2f horas \n" , mediaDia);
    
	system("pause");
    return 0;
}
