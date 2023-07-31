<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="favicon_io.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <title>Exercício ADO 01</title>
</head>
<body>
<!-- Faça um script em PHP que verifique se uma letra digitada é vogal ou consoante. Dígito ou caractere em PHP. -->
    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>
    <h2>Verificador de Caractere</h2>
    <form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
        <label for="entrada">Digite um caractere</label>
        <input type="text" name="entrada" placeholder="Digite aqui..." maxlength="1">
        <input type="submit" name="enviar" value="Enviar">
    </form>

    <?php
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $entrada = $_POST['entrada'];
    
            $vogais = array('a', 'e', 'i', 'o', 'u');
            $especiais = array('/', '*', '-', '+', '\\', '.', '=', ',', ';', ':', '\'', '"', '{', '}', '[', ']', '~', '`', '!', '@', '#', '$', '%', '%', '^', '&', '(', ')', '_', '?', '<', '>');
            $resultado = "";

            if (in_array(strtolower($entrada), $vogais) || in_array(strtoupper($entrada), $vogais)) { 
                $resultado = "O caractere digitado é uma vogal.";
                echo "";
            } elseif (ctype_digit($entrada)) {
                $resultado = "O caractere digitado é um dígito.";
            } elseif (ctype_alpha($entrada)) {
                $resultado = "O caractere digitado é uma consoante.";
            } elseif (in_array($entrada, $especiais)) {
                $resultado = "O caractere digitado é um entrada especial.";
            } elseif (empty($entrada)) {
                $resultado = "Você não digitou um caractere!!! :(";
            } 

            echo "<div id=\"resposta\"> $resultado </div>";

        }
    ?>

</body>
</html>