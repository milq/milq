<?php

$host = 'localhost';
$dbname = 'session_example';
$username = 'nacho';
$password = '1234';

$dbh = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $username, $password);

?>
