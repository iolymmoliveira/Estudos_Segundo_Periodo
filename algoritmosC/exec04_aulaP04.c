#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
    
    int tempo;
    float valor, valorDesconto;
	
	printf("Informe o tempo no qual � cliente: \n");
    scanf("%d", &tempo);
    
    printf("Informe o valor da compra em R$: \n");
    scanf("%f", &valor); 
    
    if (tempo >= 5 ) {
    	if (valor > 5000) {
    		valorDesconto = valor * 0.2;
    		printf("Voc� possui R$ %.2f de desconto. \n", valorDesconto );	
		}
		else if ( valor > 1000) {
			valorDesconto = valor * 0.1;
    		printf("Voc� possui R$ %.2f ", valorDesconto);
		}
	} 
	else {
		printf("N�o � desta vez que voc� ter� desconto!\n");
	}
    
	system("pause");
    return 0;
}

//comando para limpar o buffer do teclado
//fflush(stdin);
