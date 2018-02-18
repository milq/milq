<?php

$a = [5, 4, 3, 2, 1];
print_r($a);
sort($a);
print_r($a);

$b = [5, 4, 3, 2, 1];
print_r($b);
sort(array_values($b));
print_r($b);

?>
