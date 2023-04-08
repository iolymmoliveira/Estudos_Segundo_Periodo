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

        escreval ()
        escreval ("O aluno", cont, " possui IMC = ", imc:3:2)
        escreval ()
        
        SE (imc >= 40) ENTAO
            escreval ("Obesidade III - mórbida")
        SENAO
         	SE (imc >= 35) ENTAO
               escreval ("Obesidade II - severa")
            SENAO
         	     SE (imc >= 30) ENTAO
         	        escreval ("Obesidade I")
      	        SENAO
         		       SE (imc >= 25) ENTAO
         		          escreval ("Acima do Peso")
      		          SENAO
         			         SE (imc >= 18.5) ENTAO
         			            escreval ("Peso Normal")
      			            SENAO
         				           SE (imc >= 17) ENTAO
         				              escreval ("Abaixo do Peso")
      				              SENAO
         					             escreval ("Muito abaixo do Peso")
      				              FIMSE
    			               FIMSE
    		            FIMSE
     	          FIMSE
       	  FIMSE
        FIMSE
        escreval ("-----------------")
        escreval ("")
   FIMPARA

FimAlgoritmo
