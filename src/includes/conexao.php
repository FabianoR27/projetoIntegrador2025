<?php
// Variáveis de conexão separadas em um arquivo à parte para facilitar o manuseio
// além de ser mais seguro e te poupar de escrever de novo a mesma coisa
// use include para puxar essa conexão para as demais páginas. insira na primeira linha depois do header

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
?>
