Algoritmo "exemplo_01_var_acumuladora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Calcula a soma dos números 1 a 200
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Seção de Declarações das variáveis

   cont, soma: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   PARA cont DE 1 ATE 200 FACA

   		soma <- soma + cont

   FIMPARA

   escreval ("A soma de todos os números de 1 à 200 é:", soma)

FimAlgoritmo
