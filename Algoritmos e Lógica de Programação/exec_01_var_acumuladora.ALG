Algoritmo "exec_01_var_acumuladora"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Ler o sal�rio de 30 funcion�rios de uma empresa e mostrar o total da folha de pagamento
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Se��o de Declara��es das vari�veis

   cont: inteiro
	salario, totalFolha: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

	PARA cont DE 1 ATE 30 FACA

		escreval ("Informe seu sal�rio R$")
		leia (salario)

		totalFolha <- totalFolha + salario

  	FIMPARA

 	escreval ("Total da Folha de Pagamento R$ ", totalFolha)


FimAlgoritmo

