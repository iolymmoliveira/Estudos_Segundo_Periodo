#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	float salario;
	int numFilhos;
	
	printf("Informe seu sal�rio em R$: \n");
    scanf("%f", &salario);
    
    printf("Informe a quantidade de filhos: \n");
    scanf("%d", &numFilhos);
    
    if (salario < 2000 && numFilhos >= 2) {
    	printf("Voc� recebe desconto na mensalidade!\n");
	} else {
		printf("Voc� n�o recebe desconto na mensalidade!\n");
	}
    
	system("pause");
    return 0;
}
