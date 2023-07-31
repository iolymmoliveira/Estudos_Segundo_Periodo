<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercício ADO 05</title>
</head>
<body>
<!-- Faça um programa que leia e valide as seguintes informações: 
    Nome: maior que 3 caracteres; 
    Idade: entre 0 e 150; 
    Salário: maior que zero; 
    Sexo: 'f' ou 'm'; Estado Civil: 's', 'c', 'v', 'd'; 
    Use a função strlen(string) para saber o tamanho de um texto (número de caracteres). -->
    
    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>

    <form method="POST" action="">
        <label for="nome">Insira seu nome</label>
        <input type="text" name="nome" placeholder="Digite seu nome aqui...">
        
        <label for="idade">Insira sua idade</label>
        <input type="number" name="idade" placeholder="Digite sua idade aqui...">
        
        <label for="salario">Informe seu salário</label>
        <input type="number" name="salario" placeholder="Informe seu salário aqui...">      

        <label for="sexo">Informe seu sexo</label>
        <select name="sexo" id="sexo">
            <option type="checkbox" value="" selected> -- </option>
            <option type="checkbox" value="F" name="sexo"> Feminino </option>
            <option type="checkbox" value="M" name="sexo"> Masculino </option>
        </select>
        
        <label for="estadoCivil">Informe seu estado civil</label>
        <select name="estadoCivil" id="estadoCivil">
            <option type="checkbox" value="" selected> -- </option>
            <option type="checkbox" value="S" name="estadoCivil"> Solteiro(a) </option>
            <option type="checkbox" value="C" name="estadoCivil"> Casado(a) </option>
            <option type="checkbox" value="V" name="estadoCivil"> Viúvo(a) </option>
            <option type="checkbox" value="D" name="estadoCivil"> Divorciado(a) </option>
        </select>
        
        <input type="submit" name="enviar" value="Enviar">
    </form>

    <?php
        if (isset($_POST["nome"]) && isset($_POST["idade"]) && isset($_POST["salario"]) && isset($_POST["sexo"]) && isset($_POST["estadoCivil"]) && ($_POST["nome"] != "") && ($_POST["idade"] != "") && ($_POST["salario"] != "") && ($_POST["sexo"] != "") && ($_POST["estadoCivil"] != "")) { 
            
            $nome = $_POST['nome'];
            $idade = $_POST['idade'];
            $salario = $_POST['salario'];
            $sexo = $_POST['sexo'];
            $estadoCivil = $_POST['estadoCivil'];

            if (strlen($nome) <= 3) {
                $resposta_erro="Nome deve ter mais que três(3) caracteres!";
                echo "<div id=\"resposta_erro\"> $resposta_erro </div>";
            }
            if ($idade <= 0 || $idade >= 150) {
                $resposta_erro="Idade inválida!";
                echo "<div id=\"resposta_erro\"> $resposta_erro </div>";
            }
            if ($salario < 0) {
                $resposta_erro="Salário inválido!";
                echo "<div id=\"resposta_erro\"> $resposta_erro </div>";
            }
        } else {
            $resultado = "Favor preencher todos os campos!";
            echo "<div id=\"resposta_erro\"> $resultado </div>";
        }
    ?>

</body>
</html>