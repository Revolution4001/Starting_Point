<?php


try
{
    $pdo = new PDO('mysql:host=localhost;dbname=games;encoding=utf8','root','123qwe'); // Type your phpmyadmin password in last position
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);
}

catch (Exception $e)
{
    echo 'ERROR: '.$e->getMessage();
}