Algoritmo "imc"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Calcula imc para 20 pessoas
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 05/04/2023
Var
// Se��o de Declara��es das vari�veis

   cont: inteiro
   peso, altura, imc: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

   PARA cont DE 1 ATE 20 FACA

        escreval ("Informe sua altura: ")
		  leia (altura)

        escreval ("Informe seu peso: ")
		  leia (peso)

		  imc <- peso / (altura * altura)

        escreval ("O aluno", cont, " possui IMC = ", imc:3:2)

  FIMPARA




Fimalgoritmo