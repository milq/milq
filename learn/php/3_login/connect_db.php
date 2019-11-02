<?php

$host = 'localhost';
$dbname = 'session_example';
$username = 'nacho';
$password = '1234';

// MySQL/MariaDB
$dbh = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $username, $password);

// PostgreSQL
// $dbh = new PDO('pgsql:host=' . $host . ';dbname=' . $dbname, $username, $password);

?>
