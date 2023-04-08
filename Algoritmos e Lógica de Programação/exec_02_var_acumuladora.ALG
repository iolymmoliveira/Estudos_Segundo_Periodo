Algoritmo "exec_02_var_acumuladora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Calcular a média de idade de 25 crianças
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Seção de Declarações das variáveis

   cont, idade: inteiro
   media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

	PARA cont DE 1 ATE 25 FACA

		escreval ("Informe a idade: ")
		leia (idade)

		media <- media + idade

  	FIMPARA

	media <- media / cont

 	escreval ("As", cont, " crianças da escola primária possuem uma média de idade de ", media:3:2, " anos.")

FimAlgoritmo

