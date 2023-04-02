#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float peso, pesoEngordar, pesoEmagrecer;
	
	printf("Informe seu peso em Kg: \n");
    scanf("%f", &peso);
    
    pesoEngordar = peso * 1.15;
    
    pesoEmagrecer = peso * 0.8;
    
    printf("Peso Informado: %.2f Kg \n" , peso);
    printf("Se engordar: %.2f Kg \n", pesoEngordar);
    printf("Se emagrecer: %.2f Kg \n", pesoEmagrecer);
    
	system("pause");
    return 0;
}
