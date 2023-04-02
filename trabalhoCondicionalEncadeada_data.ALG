Algoritmo "trabalhoCondicionalEncadeada_data"
// Disciplina   : [Algoritmos e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Le data e informa o dia da semana
// Autor(a)    : Ioly Mayara Mesquita Oliveira
// Data atual  : 25/03/2023
Var
// Seção de Declarações das variáveis 
   ano, mes, dia, soma, resto: inteiro
   anosPassaram, qtd29fev, numAssoMes: inteiro
   diaSemana: caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
   escreval ("1) Se passaram ", anosPassaram, " anos desde 1900 até ",ano, ".")

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
             escreval ("4) O número associado ao mês informado é",numAssoMes,".")
             
   soma <- anosPassaram + qtd29fev + dia + numAssoMes
   resto <- soma % 7
   escreval ("5) O resto da divisão de ", soma, " por 7 é ",resto, ".")
   
   escolha resto
           caso 0
                diaSemana <- "Domingo"
           caso 1
                diaSemana <- "Segunda"
           caso 2
                diaSemana <- "Terça"
           caso 3
                diaSemana <- "Quarta"
           caso 4
                diaSemana <- "Quinta"
           caso 5
                diaSemana <- "Sexta"
           caso 6
                diaSemana <- "Sábado"
   FimEscolha
   escreval ("6) O número '", resto,"' equivale ao dia da semana: ",diaSemana, ".")
             
Fimalgoritmo