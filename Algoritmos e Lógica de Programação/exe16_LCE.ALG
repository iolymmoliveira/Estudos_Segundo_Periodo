Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Exerc�cio 16 da Lista Condicional Encadeada
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 02/04/2023
Var
// Se��o de Declara��es das vari�veis 
   numIdent: inteiro
	nota1, nota2, nota3, media: real
	conceito, mensagem: caractere

   
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
	escreval ("Informe o n�mero identificador do aluno:")
	leia (numIdent)

   escreval ("Informe a nota da primeira prova:")
   	leia (nota1)

   escreval ("Informe a nota da segunda prova:")
   	leia (nota2)

   escreval ("Informe a nota da terceira prova:")
   	leia (nota3)

   	media <- (nota1 + nota2 + nota3) / 3

   	SE (media >= 90) ENTAO
   		conceito <- "A"
   	SENAO
   		SE (media >= 75) ENTAO
   			conceito <- "B"
   		SENAO
   			SE (media >= 60) ENTAO
   				conceito <- "C"
   			SENAO
   				SE (media >= 40) ENTAO
   					conceito <- "D"
   				SENAO
                    conceito <- "E"
   				FIMSE
   			FIMSE
   		FIMSE
   	FIMSE

   ESCOLHA conceito
   caso "A"
   			mensagem <- "APROVADO"
   caso "B"
   			mensagem <- "APROVADO"
   caso "C"
   			mensagem <- "APROVADO"
   caso "D"
        mensagem <- "REPROVADO"
   caso "E"
        mensagem <- "REPROVADO"
   FIMESCOLHA

   escreval ()
   escreval ("O n�mero do aluno � ", numIdent, ".")
   escreval ("Nota 1: ", nota1)
   escreval ("Nota 2: ", nota2)
   escreval ("Nota 3: ", nota3)
   escreval ("M�dia: ", media:3:2)
   escreval ("Conceito: ", conceito, " - ", mensagem)

FimAlgoritmo
------------------------------------------------------------------------------


Fimalgoritmo