#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main() {
	
	setlocale(LC_ALL, "");
	
	int x;
	
	x = 10 > 50;
	
	printf("%d\n", x);
    
	system("pause");
    return 0;
}

// Resultado: 0
