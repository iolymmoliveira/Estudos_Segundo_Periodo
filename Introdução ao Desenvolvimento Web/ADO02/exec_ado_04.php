<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercício ADO 04</title>
</head>
<body>
<!-- Faça uma página Web que leia três números inteiros, em seguida mostre o maior e o menor deles. -->
    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>
    
    <h2>Menor e Maior de 3 números inseridos</h2>

    <form method="POST" action="#">
        <label for="numero1">Insira o valor do primeiro número:</label>
        <input type="number" name="numero1" placeholder="Digite seu número aqui..." maxlength="4">
        <label for="numero2">Insira o valor do segundo número:</label>
        <input type="number" name="numero2" placeholder="Digite seu número aqui..." maxlength="4">
        <label for="numero3">Insira o valor do terceiro número:</label>
        <input type="number" name="numero3" placeholder="Digite seu número aqui..." maxlength="4">      
        <input type="submit" name="ordenar" value="Menor / Maior">
    </form>
    <?php
            if (isset($_POST["numero1"]) && isset($_POST["numero2"]) && isset($_POST["numero3"]) && ($_POST["numero1"]!= "") && ($_POST["numero2"] != "") && ($_POST["numero3"] != "")) { 
                
                $numero1 = $_POST['numero1'];
                $numero2 = $_POST['numero2'];
                $numero3 = $_POST['numero3'];
                $numeros = "";
                $ordenados = "";
                        
                function numerosOrdemCrescente($numero1, $numero2, $numero3) {
                    $numeros = [$numero1, $numero2, $numero3];             
                    sort($numeros);
                    return $numeros;
                }
                
                $ordenados = numerosOrdemCrescente($numero1, $numero2, $numero3);
                        
                echo "<div id=\"resposta\"> Menor número: " .$ordenados[0]. "</div>"; 
                
                echo "<div id=\"resposta\"> Maior número: " .$ordenados[2]. "</div>";
            } else {
                echo "<div id=\"resposta_erro\"> Favor inserir valor para todos os números! </div>";
            }          
        ?>
</body>
</html>