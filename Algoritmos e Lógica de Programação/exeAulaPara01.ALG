Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Mostre a tabuada de um n�mero informado (entre 2 e 9)
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 02/04/2023
Var
// Se��o de Declara��es das vari�veis 
   cont, num: inteiro;
   
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Informe um n�mero de 2 a 9: ")
	leia (num)

   escreval("A tabuada para o n�mero: ", num, " �: ")
   escreval()
   
   PARA cont DE 1 ATE 10 FACA
	     escreval ( num, " x ", cont, " = ", cont * num)
   FIMPARA

Fimalgoritmo