Algoritmo "exec_02_var_acumuladora"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Calcular a m�dia de idade de 25 crian�as
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Se��o de Declara��es das vari�veis

   cont, idade: inteiro
   media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

	PARA cont DE 1 ATE 25 FACA

		escreval ("Informe a idade: ")
		leia (idade)

		media <- media + idade

  	FIMPARA

	media <- media / cont

 	escreval ("As", cont, " crian�as da escola prim�ria possuem uma m�dia de idade de ", media:3:2, " anos.")

FimAlgoritmo

