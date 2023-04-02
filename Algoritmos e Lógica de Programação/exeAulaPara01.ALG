Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Mostre a tabuada de um número informado (entre 2 e 9)
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 02/04/2023
Var
// Seção de Declarações das variáveis 
   cont, num: inteiro;
   
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Informe um número de 2 a 9: ")
	leia (num)

   escreval("A tabuada para o número: ", num, " é: ")
   escreval()
   
   PARA cont DE 1 ATE 10 FACA
	     escreval ( num, " x ", cont, " = ", cont * num)
   FIMPARA

Fimalgoritmo