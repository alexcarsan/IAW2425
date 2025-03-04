<?php

    $ip = $_SERVER['REMOTE_ADDR']; //IP del cliente
    $navegador = $_SERVER['HTTP_USER_AGENT'];
    $pagina = isset($_SERVER['HTTP_REFERER']);

    echo "Tu dirección IP es " . $ip . ", tu navegador es " . $navegador . " y la página que te ha referido es " . $pagina; //Lo imprimo todo por pantalla

?>