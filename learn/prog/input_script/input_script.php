<?php

// Example of execution: php input_script.ps1 -3.4 'Hello, world!' 6



$a = $argv;
$b = $argv[0];
$c = $argv[1];
$d = $argv[2];
$e = $argv[3];

echo PHP_EOL;
echo 'Arguments obtained (array): ' . implode(', ', $a) . PHP_EOL;
echo PHP_EOL;
echo 'Number of arguments: ' . count($a) . PHP_EOL;
echo PHP_EOL;
echo 'Script name: ' . $b . PHP_EOL;
echo PHP_EOL;
echo 'First argument: ' . $c . PHP_EOL;
echo 'Second argument: ' . $d . PHP_EOL;
echo 'Third argument: ' . $e . PHP_EOL;
echo PHP_EOL;
echo 'All arguments are strings. E.g. type of second argument: ' . gettype($d) . PHP_EOL;
echo PHP_EOL;

?>
