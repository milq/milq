<?php

$host = 'localhost';
$dbname = 'db_example';
$username = 'admin';
$password = '1234';

// Connection to a DB. DSN: mysql, pgsql, oci (other syntax), sqlsrv (other syntax).
$dbh = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $username, $password);

?>
