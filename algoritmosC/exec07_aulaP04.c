#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

//comando para limpar o buffer do teclado
//fflush(stdin);

int main() {
	
	setlocale(LC_ALL, "");
    
    float saldoInicial, totalDebitos, totalCreditos, saldoFinal;
	
	printf("Informe o seu saldo inicial em R$: \n");
    scanf("%f", &saldoInicial);
    
    fflush(stdin);
    printf("Informe o valor total de Débitos R$: \n");
    scanf("%f", &totalDebitos); 
    
    fflush(stdin);
    printf("Informe o valor total de Créditos R$: \n");
    scanf("%f", &totalCreditos); 
    
    saldoFinal = saldoInicial - totalDebitos + totalCreditos;
    
    if (saldoFinal > 0 ) {	
    	printf("Saldo Positivo em R$ %.2f . \n", saldoFinal);		
	} 
	else if (saldoFinal < 0) {
		printf("Saldo Negativo em R$ %.2f . \n", saldoFinal);
	}
    else {
    	printf("Saldo Zerado R$ %.2f . \n", saldoFinal);
	}
    
	system("pause");
    return 0;
}


