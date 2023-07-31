<!-- 
Faça um programa que leia uma quantidade indeterminada de números positivos e conte quantos deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. A entrada de dados deverá terminar quando for lido um número negativo. 
-->

<?php
    $numeroPos = 0;
    $intervalo1 = 0;
    $intervalo2 = 0;
    $intervalo3 = 0; 
    $intervalo4 = 0;

    $numeroPos = (int)readline('Digite um número inteiro de 0 a 100 (ou negativo para parar):');
    
    while ($numeroPos > 0) {
        
        if ($numeroPos < 0) {
            break;
        } elseif ($numeroPos <= 25) {
            $intervalo1++;
        } elseif ($numeroPos <= 50) {
            $intervalo2++;
        }
        elseif($numeroPos <= 75) {
            $intervalo3++;
        }
        elseif($numeroPos <= 100) {
            $intervalo4++; 
        } else {
            echo("\n Número inválido! \n\n");
        }

        $numeroPos = (int)readline('Digite um número inteiro de 0 a 100 (ou negativo para parar):');
    }

    echo "\n\n Para os números digitados: \n";
    echo " $intervalo1 foram do intervalo [0-25], \n" ;
    echo " $intervalo2 foram do intervalo [26-50], \n" ;
    echo " $intervalo3 foram do intervalo [51-75], \n" ;
    echo " $intervalo4 foram do intervalo [76-100]. \n\n" ;

?>
