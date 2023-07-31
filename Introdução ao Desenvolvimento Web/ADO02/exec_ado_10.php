<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercício ADO 10</title>
</head>
<body>
<!-- Faça um programa que mostre os n termos da Série a seguir: S = 1/1 + 2/3 + 3/5 + 4/7 + 5/9 + ... + n/m. Imprima no final a soma da série. -->
    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>
    <h2>Termos da Série</h2>
    <form method="POST" action="#">
        <label for="termoN">Insira um número</label>
        <input type="number" name="termoN" placeholder="Digite o número aqui...">
        
        <input type="submit" name="mostrar" value="Mostrar">
    </form>

    <?php
        if (isset($_POST["termoN"]) && ($_POST["termoN"] != "") && ($_POST["termoN"] > 0)) { 
            
            $termoN = $_POST["termoN"];
            $soma = 0;
            $calc_divisao = 0;
            $j=1;


            echo "<div id=\"resposta_div\"> Os termos da série são: <br> ";

            for($i=1; $i<=$termoN; $i++) {
                echo "$i" ."/". "$j"."<br>";
                $calc_divisao = $i/$j; 
                $soma += $calc_divisao;
                $j+=2;
            }

            echo "<br> A soma da série corresponde a: " . number_format($soma, 2,'.',',');
            echo "<br> </div>";
                        
        } else {
            $resultado = "Favor informar um valor válido!";
            echo "<div id=\"resposta_erro\"> $resultado </div>";
        }
    ?>
</body>
</html>