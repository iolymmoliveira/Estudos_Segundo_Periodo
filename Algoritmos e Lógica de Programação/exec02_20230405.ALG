Algoritmo "imc"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Calcula imc para 20 pessoas
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 05/04/2023
Var
// Seção de Declarações das variáveis

   cont: inteiro
   peso, altura, imc: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   PARA cont DE 1 ATE 20 FACA

        escreval ("Informe sua altura: ")
		  leia (altura)

        escreval ("Informe seu peso: ")
		  leia (peso)

		  imc <- peso / (altura * altura)

        escreval ("O aluno", cont, " possui IMC = ", imc:3:2)

  FIMPARA




Fimalgoritmo