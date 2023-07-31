<?php
// Função para verificar se o CPF informado é válido 
function verifyCPF($cpf) {
    // Extrai somente os números
    $cpf = preg_replace( '/[^0-9]/is', '', $cpf );
        
    // Verifica se todos os dígitos foram informados corretamente
    if (strlen($cpf) != 11) {
        return false;
    }

    // Verifica se foi informada uma sequência de dígitos repetidos. Ex: 111.111.111-11
    if (preg_match('/(\d)\1{10}/', $cpf)) {
        return false;
    }

    // Realiza cálculo para validar o CPF
    for ($t = 9; $t < 11; $t++) {
        for ($d = 0, $c = 0; $c < $t; $c++) {
            $d += $cpf[$c] * (($t + 1) - $c);
        }
        $d = ((10 * $d) % 11) % 10;
        if ($cpf[$c] != $d) {
            return false;
        }
    }
    return true;
}

// Function que realiza validação do comprimento mínimo de 3 caracteres para name e lastname
function verifyNameLastname($name, $lastname) {
    if (strlen($name) >= 3 && strlen($lastname) >= 3) {
        return true;   
    }
}

// Function que realiza validação do campo age
function verifyAge($age) {
    if ($age > 0 && $age < 150) {
        return true;
    }
}

// Função para salvar os dados no arquivo
function saveData($data_form) {
    $file = fopen('base_de_dados.txt', 'a'); // Abre o arquivo em modo de adição
    fwrite($file, $data_form . PHP_EOL); // Escreve os dados no arquivo
    fclose($file); // Fecha o arquivo
}

// Verifica se o formulário foi enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtém os dados do formulário
    $name = $_POST['name'];
    $lastname = $_POST['lastname'];
    $age = $_POST['age'];
    $cpf = $_POST['cpf'];
  
    // Verifica se todos os campos estão preenchidos
    if (empty($name) || empty($lastname) || empty($age) || empty($cpf)) {
        echo "<div id='resposta_erro'> Por favor, preencha todos os campos! </div>";
    } else {
        if (verifyCPF($cpf)) {
            if(verifyAge($age)){
                if (verifyNameLastname($name, $lastname)) {
                    // Monta a string com os dados
                    $data_form = "Nome:".$name. ", Sobrenome: ".$lastname.", Idade:".$age.", cpf:".$cpf;
                    
                    // Salva os dados no arquivo
                    saveData($data_form);
                    
                    echo "<div id='resposta'> Dados salvos com sucesso! </div>";
                } else {
                    echo "<div id='resposta_erro'> O nome e sobrenome devem ter pelo menos 3 caracteres! </div>";
                }
            } else {
                echo "<div id='resposta_erro'> A idade deve ser maior que zero e menor ou igual a 150! </div>";
            }
        } else {
            echo "<div id='resposta_erro'> CPF inválido! </div>";
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="favicon_io.ico" type="image/x-icon">
    <title>Avaliação 2 || Formulário</title>
</head>
<body>
    <!-- 
        Crie um formulário que recebe os seguintes campos: Nome, Sobrenome, Idade e CPF.
        O formulário deve conter também um botão chamado "Enviar".
        Ao clicar no botão enviar, esse formulário deve estar preparado para informar uma mensagem de erro para o caso do usuário não ter informado algum dos campos.
        Caso todos os dados sejam informados, então esses dados devem ser gravados em um arquivo chamado "base_de_dados.txt". Esses dados devem ser dispostos da seguinte forma:
        nome:Jonathan,Sobrenome:Morris Samara,Idade:29,cpf:08668994999
        Análise do código será feita, logo códigos identicos terão a nota zerada. 
    -->
    <div class="image">
        <img src="ioioNew.png" alt="logo_ioly">
    </div>

    <form method="POST"> 
        <label for="name">Nome</label>
        <input type="text" name="name" id="name" placeholder="Digite seu nome aqui...">
        
        <label for="lastname">Sobrenome</label>
        <input type="text" name="lastname" id="lastname" placeholder="Digite seu sobrenome aqui...">
        
        <label for="age">Idade</label>
        <input type="text" name="age" id="age" placeholder="Digite sua idade aqui...">
        
        <label for="cpf">CPF</label>
        <input type="text" name="cpf" id="cpf" placeholder="Digite apenas os números de seu CPF aqui...">
        
        <input type="submit" name="submit" value="Enviar">
    </form>

</body>
</html>
