<?php
require_once('bar/A.php');
require_once('bar/B.php');
require_once('foo/C.php');

use J\X;

$x = new X();
echo $x->get_greeting();

// TRY YOURSELF: uncomment these lines and run 'php index.php', what happens? Why?
// use K\X;
//
// $x = new X();
// echo $x->get_variable();

// TRY YOURSELF: change to 'L\say_hello;' and run 'php index.php', what happens? Why?
use function K\say_hello;

echo say_hello();

?>
