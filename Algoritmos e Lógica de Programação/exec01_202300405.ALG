Algoritmo "tabuada"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 05/04/2023
Var
// Se��o de Declara��es das vari�veis 

   cont, num: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

	escreval ("Informe um n�mero de 2 a 9: ")
	leia (num)

   escreval ("A tabuada para o n�mero: ", num, " �: ")

   PARA cont DE 1 ATE 10 FACA
	     escreval (num, " x ", cont, " = ", cont * num)
   FIMPARA


Fimalgoritmo