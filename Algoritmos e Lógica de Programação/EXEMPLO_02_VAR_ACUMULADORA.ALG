Algoritmo "exemplo_02_var_acumuladora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Calcula a soma dos números pares de 1 a 200
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Seção de Declarações das variáveis

   cont, soma, numI: inteiro
   
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   PARA cont DE 1 ATE 200 FACA

		SE (cont % 2 = 0) ENTAO
		
			soma <- soma + cont
			
		FIMSE

  FIMPARA

  escreval ("A soma de todos os números pares de 1 à 200 é: ", soma)

FimAlgoritmo

