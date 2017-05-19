<?php

$host = 'localhost';
$dbname = 'session_example';
$username = 'admin';
$password = '1234';

$dbh = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $username, $password);

?>
