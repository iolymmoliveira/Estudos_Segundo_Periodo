Algoritmo "exec_01_var_acumuladora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Ler o salário de 30 funcionários de uma empresa e mostrar o total da folha de pagamento
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Seção de Declarações das variáveis

   cont: inteiro
	salario, totalFolha: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

	PARA cont DE 1 ATE 30 FACA

		escreval ("Informe seu salário R$")
		leia (salario)

		totalFolha <- totalFolha + salario

  	FIMPARA

 	escreval ("Total da Folha de Pagamento R$ ", totalFolha)


FimAlgoritmo

