Algoritmo "exemplo_03_var_acumuladora"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Calcula a soma soma de todos os n�meros de um intervalo
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
// Se��o de Declara��es das vari�veis

   cont, soma, numI, numII: inteiro
   
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreval ("Informe o primeiro n�mero")
   leia (numI)

   escreval ("Informe o segundo n�mero")
   leia (numII)
   
   PARA cont DE numI ATE numII FACA
		
			soma <- soma + cont

  FIMPARA

  escreval ("A soma de todos os n�meros", numI," �", numII, " �:", soma)

FimAlgoritmo

