Algoritmo "trabalhoCondicionalEncadeada_cpf"
// Disciplina   : [Algoritmos e L�gica de Programa��o]
// Professor   : Alexandre Dequech
// Descri��o   : Verifica se um CPF � ou n�o v�lido
// Autor(a)    : Ioly Mayara Mesquita Oliveira
// Data atual  : 26/03/2023
Var
// Se��o de Declara��es das vari�veis
   dig1, dig2, dig3, dig4, dig5, dig6, dig7, dig8, dig9, dig10, dig11: inteiro
   soma1, valor1, resultado1, dig1_verificador: inteiro
   soma2, valor2, resultado2, dig2_verificador: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Informe os onze(11) d�gitos do seu CPF:")
   leia (dig1, dig2, dig3, dig4, dig5, dig6, dig7, dig8, dig9, dig10, dig11)
   
   //Valida��o do 1� D�gito Verificador
   soma1 <- (dig1*10)+(dig2*9)+(dig3*8)+(dig4*7)+(dig5*6)+(dig6*5)+(dig7*4)+(dig8*3)+(dig9*2)
   valor1 <- (soma1\11) * 11
   resultado1 <- soma1 - valor1
   
   SE (resultado1 = 1) OU (resultado1 = 0) ENTAO
      dig1_verificador <- 0
   SENAO
        dig1_verificador <- 11 - resultado1
   FIMSE
   
   //Valida��o do 2� D�gito Verificador
   soma2 <- (dig1*11)+(dig2*10)+(dig3*9)+(dig4*8)+(dig5*7)+(dig6*6)+(dig7*5)+(dig8*4)+(dig9*3)
   soma2 <- soma2 + (dig1_verificador * 2)
   valor2 <- (soma2\11) * 11
   resultado2 <- soma2 - valor2

   SE (resultado2 = 1) OU (resultado2 = 0) ENTAO
      dig2_verificador <- 0
   SENAO
        dig2_verificador <- 11 - resultado2
   FIMSE

   SE (dig1_verificador = dig10) E (dig2_verificador = dig11) ENTAO
      escreval ("CPF V�lido")
   SENAO
        escreval ("CPF Inv�lido")
   FIMSE

Fimalgoritmo