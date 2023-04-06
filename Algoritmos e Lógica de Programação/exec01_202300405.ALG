Algoritmo "tabuada"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 05/04/2023
Var
// Seção de Declarações das variáveis 

   cont, num: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

	escreval ("Informe um número de 2 a 9: ")
	leia (num)

   escreval ("A tabuada para o número: ", num, " é: ")

   PARA cont DE 1 ATE 10 FACA
	     escreval (num, " x ", cont, " = ", cont * num)
   FIMPARA


Fimalgoritmo