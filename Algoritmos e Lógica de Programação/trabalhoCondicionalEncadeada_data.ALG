Algoritmo "trabalhoCondicionalEncadeada_data"
// Disciplina   : [Algoritmos e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Le data e informa o dia da semana
// Autor(a)    : Ioly Mayara Mesquita Oliveira
// Data atual  : 25/03/2023
Var
// Se��o de Declara��es das vari�veis 
   ano, mes, dia, soma, resto: inteiro
   anosPassaram, qtd29fev, numAssoMes: inteiro
   diaSemana: caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreval("Informe o ano:")
   leia (ano)
   
   escreval ("")
   escreval("Informe o mes:")
   leia (mes)
   
   escreval ("")
   escreval("Informe o dia:")
   leia (dia)
   
   anosPassaram <- ano - 1900
   escreval ("")
   escreval ("----------------------------")
   escreval ("1) Se passaram ", anosPassaram, " anos desde 1900 at� ",ano, ".")

   qtd29fev <- anosPassaram \ 4
   escreval ("2) Existiram ",qtd29fev, " dias '29 DE FEVEREIRO' de 1900 a ",ano, ".")

   escreval ("3) O dia informado foi ",dia, ".")
   
   escolha mes
           caso 1
                numAssoMes <- 0
           caso 2
                numAssoMes <- 3
           caso 3
                numAssoMes <- 3
           caso 4
                numAssoMes <- 6
           caso 5
                numAssoMes <- 1
           caso 6
                numAssoMes <- 4
           caso 7
                numAssoMes <- 6
           caso 8
                numAssoMes <- 2
           caso 9
                numAssoMes <- 5
           caso 10
                numAssoMes <- 0
           caso 11
                numAssoMes <- 3
           caso 12
                numAssoMes <- 5
   FimEscolha
             escreval ("4) O n�mero associado ao m�s informado �",numAssoMes,".")
             
   soma <- anosPassaram + qtd29fev + dia + numAssoMes
   resto <- soma % 7
   escreval ("5) O resto da divis�o de ", soma, " por 7 � ",resto, ".")
   
   escolha resto
           caso 0
                diaSemana <- "Domingo"
           caso 1
                diaSemana <- "Segunda"
           caso 2
                diaSemana <- "Ter�a"
           caso 3
                diaSemana <- "Quarta"
           caso 4
                diaSemana <- "Quinta"
           caso 5
                diaSemana <- "Sexta"
           caso 6
                diaSemana <- "S�bado"
   FimEscolha
   escreval ("6) O n�mero '", resto,"' equivale ao dia da semana: ",diaSemana, ".")
             
Fimalgoritmo