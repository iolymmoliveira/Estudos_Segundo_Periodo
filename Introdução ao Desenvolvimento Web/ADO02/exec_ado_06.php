<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercício ADO 06</title>
</head>
<body>
<!-- Supondo que a população de um país A seja da ordem de 80000 habitantes com uma taxa anual de crescimento de 3% e que a população de B seja 200000 habitantes com uma taxa de crescimento de 1.5%. Faça um programa que calcule e escreva o número de anos necessários para que a população do país A ultrapasse ou iguale a população do país B, mantidas as taxas de crescimento. -->
    
    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>

    <div class="enunciado">
        <p>
            Supondo que a população de um país A seja da ordem de 80000 habitantes com uma taxa anual de crescimento de 3% e que a população de B seja 200000 habitantes com uma taxa de crescimento de 1.5%. 
        </p>
        <p>
            Faça um programa que calcule e escreva o número de anos necessários para que a população do país A ultrapasse ou iguale a população do país B, mantidas as taxas de crescimento.
        </p>
    </div>

    <?php
        $pop_pais_A = 80000;
        $pop_pais_B = 200000;
        $cont_ano = 0;
        
        while ($pop_pais_A <= $pop_pais_B) {
            // As variáveis recebem seu próprio valor e são acrescidas percentualmente
            $pop_pais_A += ($pop_pais_A * 0.03);
            $pop_pais_B += ($pop_pais_B * 0.015);
            // Quantificar o número de anos
            $cont_ano ++;
        };

        echo "<div id=\"resposta_div\"> O tempo necessário para que a população do país A ultrapasse a população do país B ou iguale a população do país B, mantidas as taxas de crescimento é de " .$cont_ano. " anos. </div>";
    ?>        

</body>
</html>