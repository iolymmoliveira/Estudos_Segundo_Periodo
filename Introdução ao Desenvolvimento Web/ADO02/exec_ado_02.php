<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercício ADO 02</title>
</head>
<body>
<!-- Faça uma página Web que pede duas notas de um aluno. Em seguida ele deve calcular a média do aluno e dar o seguinte resultado:

A mensagem "Aprovado", se a média alcançada for maior ou igual a sete; A mensagem "Reprovado", se a média for menor do que sete; A mensagem "Aprovado com Distinção", se a média for igual a dez. Calcula média e diz se foi aprovado. -->

    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>
    
    <h2>Verificador de Notas</h2>

    <form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
        <label for="nota1">Digite a Nota 1 do aluno:</label>
        <input type="text" name="nota1" placeholder="Digite aqui a nota 1..." maxlength="4">
        <label for="nota2">Digite a Nota 2 do aluno:</label>
        <input type="text" name="nota2" placeholder="Digite aqui a nota 2..." maxlength="4">
        <input type="submit" name="calcular" value="Calcular média">
    </form>

    <?php
        if (isset($_POST["nota1"]) && isset($_POST["nota2"]) && ($_POST["nota1"]!= "") && ($_POST["nota2"] != "")) { 
            
            $nota1 = $_POST['nota1'];
            $nota2 = $_POST['nota2'];
            $media = "";

            if (($_POST["nota1"] <= 10) && ($_POST["nota2"] <= 10)) {

                $media = number_format((($nota1 + $nota2)/2), 2, '.', '');

                if ($media == 10) { 
                    $resultado = "Média = $media => APROVADO com DISTINÇÃO";
                } elseif ($media >= 7) {
                    $resultado = "Média = $media => APROVADO";
                } elseif ($media < 7) {
                    $resultado = "Média = $media => REPROVADO";
                }
                echo "<div id=\"resposta\"> $resultado </div>";  
            } else {
                echo "<div id=\"resposta_erro\"> Favor inserir notas válidas para ambas as notas! </div>";
            }
        } else {
            echo "<div id=\"resposta_erro\"> Favor inserir as notas! </div>";
        }    
    ?>
</body>
</html>