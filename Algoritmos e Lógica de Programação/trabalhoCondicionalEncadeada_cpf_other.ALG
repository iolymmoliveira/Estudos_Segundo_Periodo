Algoritmo "trabalhoCondicionalEncadeada_cpf_other"
// Disciplina   : [Algoritmos e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Verifica se um CPF é ou não válido
// Autor(a)    : Ioly Mayara Mesquita Oliveira
// Data atual  : 26/03/2023
Var
// Seção de Declarações das variáveis
   dig1, dig2, dig3, dig4, dig5, dig6, dig7, dig8, dig9, dig10, dig11: inteiro
   soma1, valor1, resultado1, dig1_verificador: inteiro
   soma2, valor2, resultado2, dig2_verificador: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Informe os onze(11) dígitos do seu CPF:")
   leia (dig1, dig2, dig3, dig4, dig5, dig6, dig7, dig8, dig9, dig10, dig11)

   //Dígito Verificador 1
   soma1 <- (dig1*10)+(dig2*9)+(dig3*8)+(dig4*7)+(dig5*6)+(dig6*5)+(dig7*4)+(dig8*3)+(dig9*2)
   valor1 <- (soma1\11) * 11
   resultado1 <- soma1 - valor1
   
   //Verifica 1º Dígito Verificador
   SE (resultado1 = 1) OU (resultado1 = 0) ENTAO
      dig1_verificador <- 0
   SENAO
        dig1_verificador <- 11 - resultado1
   FIMSE

   //Dígito Verificador 2
   soma2 <- (dig1*11)+(dig2*10)+(dig3*9)+(dig4*8)+(dig5*7)+(dig6*6)+(dig7*5)+(dig8*4)+(dig9*3)
   soma2 <- soma2 + (dig1_verificador * 2)
   valor2 <- (soma2\11) * 11
   resultado2 <- soma2 - valor2

   //Verifica 2º Dígito Verificador
   SE (resultado2 = 1) OU (resultado2 = 0) ENTAO
         dig2_verificador <- 0
         
         //Verifica Validade do CPF
         SE (dig1_verificador = dig10) E (dig2_verificador = dig11) ENTAO
            escreval ("CPF Válido")
         SENAO
              escreval ("CPF Inválido")
         FIMSE
   SENAO
        dig2_verificador <- 11 - resultado2
        
        //Verifica Validade do CPF
        SE (dig1_verificador = dig10) E (dig2_verificador = dig11) ENTAO
            escreval ("CPF Válido")
         SENAO
              escreval ("CPF Inválido")
         FIMSE
   FIMSE

Fimalgoritmo