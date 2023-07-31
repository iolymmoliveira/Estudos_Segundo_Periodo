<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercício ADO 08</title>
</head>
<body>
<!-- Altere o programa anterior para mostrar no final a soma dos números. -->

    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>
    <h2>Soma do Intevalo</h2>
    <form method="POST" action="#">
        <label for="inteiro1">Insira o primeiro número</label>
        <input type="number" name="inteiro1" placeholder="Digite o número aqui...">

        <label for="inteiro2">Insira um segundo número</label>
        <input type="number" name="inteiro2" placeholder="Digite o número aqui...">
        
        <input type="submit" name="gerar" value="Soma">
    </form>

    <?php
        if (isset($_POST["inteiro1"]) && isset($_POST["inteiro2"]) && ($_POST["inteiro1"] != "") && ($_POST["inteiro2"] != "")) { 
            
            $inteiro1 = $_POST["inteiro1"];
            $inteiro2 = $_POST["inteiro2"];
                        
            if ($inteiro1 < $inteiro2) {
                $soma = 0;
                echo "<div id=\"resposta_div\"> Os números do intervalo " .$inteiro1. " a " .$inteiro2. " são: <br> ";                
                for ($i=$inteiro1 + 1; $i < $inteiro2; $i++) {
                    echo $i. "<br>"; 
                    $soma += $i;
                }
                echo " <br> A soma dos números compreendidos no intervalo " .$inteiro1. " a " .$inteiro2. " é: <br>" . $soma;
                echo "<br> </div>";
            } elseif ($inteiro1 > $inteiro2) {
                $soma = 0;
                echo "<div id=\"resposta_div\"> Os números do intervalo " .$inteiro1. " a " .$inteiro2. " são: <br>";                   
                for ($i=$inteiro1 - 1; $i > $inteiro2; $i--) { 
                    echo $i . "<br>"; 
                    $soma += $i;
                }
                echo "<br> A soma dos números compreendidos no intervalo " .$inteiro1. " a " .$inteiro2. " é: <br>" . $soma;
                echo "<br> </div>";
            } else {
                echo " <div id=\"resposta_div\"> Não há números para serem gerados já que os números informados são iguais. </div>";
            }
        } else {
            $resultado = "Favor informar valores válidos!";
            echo "<div id=\"resposta_erro\"> $resultado </div>";
        }
    ?>
</body>
</html>