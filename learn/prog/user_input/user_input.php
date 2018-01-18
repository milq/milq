<?php

// Example of execution: php user_input.php -3.4 'Hello, world!' 6



$a = $argv[0];
$b = $argv[1];
$c = $argv[2];
$d = $argv[3];


echo 'Script name: ' . PHP_EOL;
echo PHP_EOL;
echo 'First argument: ' . $b . PHP_EOL;
echo 'Second argument: ' . $c . PHP_EOL;
echo 'Third argument: ' . $d . PHP_EOL;
echo  PHP_EOL;
echo 'All arguments are string. E.g. type of first argument: ' . gettype($b) . PHP_EOL;
echo PHP_EOL;
echo 'Arguments inside an array: see code.' . PHP_EOL; // The arguments are stored in the array $argv.
echo 'The total numbers of arguments passed to the script: ' . count($argv) . PHP_EOL;

?>
