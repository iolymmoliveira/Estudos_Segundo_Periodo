Algoritmo "exec_03_var_acumuladora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Alexandre Dequech
// Descrição   : Ler e calcular salários de 100 funcionários
// Autor(a)    : Ioly M M Oliveira
// Data atual  : 08/04/2023
Var
   // Seção de Declarações das variáveis

   contFunc, contSal: inteiro
   salario, salarioAnual, folhaAnual: inteiro


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   PARA contFunc DE 1 ATE 2 FACA

      escreval ("Informe os 13 salários do ", contFunc, "º Funcionário:")
      escreval ()

      PARA contSal DE 1 ATE 13 FACA

         escreval ("Informe o ", contSal, "º salário:")
         leia (salario)

         salarioAnual <- salarioAnual + salario

      FIMPARA

      escreval()
      escreval ("O salário anual do funcionário", contFunc," é de R$", salarioAnual, " reais.")
      escreval ("-------------------------------------")
      escreval()
      
      folhaAnual <- folhaAnual + salarioAnual

   FIMPARA
   escreval (">>>>>>>>>>>>>><<<<<<<<<<<<<")
   escreval()
   escreval ("A folha anual é de R$", folhaAnual, " reais.")
   escreval()

FimAlgoritmo

