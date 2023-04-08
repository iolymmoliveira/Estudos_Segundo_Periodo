Algoritmo "exemplo_03_var_acumuladora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Calcula a soma soma de todos os números de um intervalo
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Seção de Declarações das variáveis

   cont, soma, numI, numII: inteiro
   
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   escreval ("Informe o primeiro número")
   leia (numI)

   escreval ("Informe o segundo número")
   leia (numII)
   
   PARA cont DE numI ATE numII FACA
		
			soma <- soma + cont

  FIMPARA

  escreval ("A soma de todos os números", numI," à", numII, " é:", soma)

FimAlgoritmo

