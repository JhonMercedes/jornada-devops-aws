<?php
$servername = "mysql-connection";
$username = "root";
$password = "Senha123";
$database = "meubanco";

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if(mysqli_connect_error()) {
    printf("Conexão falhou: %\n", mysqli_connect_error());
    exit();
}

?>