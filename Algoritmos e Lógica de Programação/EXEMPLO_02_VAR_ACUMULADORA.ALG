Algoritmo "exemplo_02_var_acumuladora"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Calcula a soma dos n�meros pares de 1 a 200
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Se��o de Declara��es das vari�veis

   cont, soma, numI: inteiro
   
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

   PARA cont DE 1 ATE 200 FACA

		SE (cont % 2 = 0) ENTAO
		
			soma <- soma + cont
			
		FIMSE

  FIMPARA

  escreval ("A soma de todos os n�meros pares de 1 � 200 �: ", soma)

FimAlgoritmo

