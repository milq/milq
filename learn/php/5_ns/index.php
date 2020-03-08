<?php
// 1. TRY YOURSELF: run 'php index.php', what happens? Why?

require_once('bar/A.php');
require_once('bar/B.php');
require_once('foo/C.php');

use J\X;

$x = new X();
echo $x->get_greeting();

// 2. TRY YOURSELF: uncomment these lines and run 'php index.php', what happens? Why?
// use K\X;
//
// $x = new X();
// echo $x->get_variable();

// 3. TRY YOURSELF: change to 'L\say_hello;' and run 'php index.php', what happens? Why?
use function K\say_hello;

echo say_hello();

?>
