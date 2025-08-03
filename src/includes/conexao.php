<?php
// Arquivo de conexão com o banco de dados
// Conectar ao banco de dados usando as variáveis de configuração $nome_servidor, $nome_usuario, $senha, $nome_banco.
$nome_servidor = "localhost"; // Nome do servidor
$nome_usuario = "root"; // Nome de usuário do banco de dados
$senha = ""; // Senha do banco de dados
$nome_banco = "portalfatecon"; // Nome do banco de dados

// Criar conexão
$conecta = new mysqli($nome_servidor, $nome_usuario, $senha, $nome_banco);

// Verificar se a conexão foi bem-sucedida
if ($conecta->connect_error) {
    die("Conexão falhou: " . $conecta->connect_error); // Encerrar o script se a conexão falhar
}

// Define o charset corretamente para evitar caracteres corrompidos
$conecta->set_charset("utf8mb4");
?>
