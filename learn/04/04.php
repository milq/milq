<?php      //  LOOPS


echo '<p>CLASSICAL LOOP</p>'; // CLASSICAL LOOP

for ($i = 0; $i < 10; $i++) {
    echo 'i:' . $i . '&nbsp;&nbsp;&nbsp;';
}



echo '<p>CLASSICAL LOOP WITH ARRAYS</p>'; // CLASSICAL LOOP WITH ARRAYS

$numbers = [-3.2, 5.3, 3, 1];

for ($i = 0; $i < count($numbers); $i++) {
    echo $numbers[$i] . '&nbsp;&nbsp;&nbsp;';
}



echo '<p>REVERSE LOOP</p>'; // REVERSE LOOP

for ($i = 5; $i >= 0; $i--) {
    echo 'i:' . $i . '&nbsp;&nbsp;&nbsp;';
}



echo '<p>NESTED LOOP</p>'; // NESTED LOOP

for ($i = 0; $i < 3; $i++) {
    echo 'i:' . $i . '&nbsp;&nbsp;&nbsp;';
    for ($j = 2; $j > 0; $j--) {
        echo 'j:' . $j . '&nbsp;&nbsp;&nbsp;';
        for ($k = 0; $k < 2; $k++) {
            echo 'k:' . $k . '&nbsp;&nbsp;&nbsp;';
        }
    }
}



echo '<p>ITERATOR LOOP</p>'; // ITERATOR LOOP

$colors = ['red', 'green', 'blue', 'yellow'];

foreach ($colors as $color) {
    echo $color . '&nbsp;&nbsp;&nbsp;';
}



echo '<p>WHILE LOOP</p>'; // WHILE LOOP

$i = 0;
while ($i <= 3) {
    $i++;
    echo 'Hello ' . $i . '&nbsp;&nbsp;&nbsp;';
}



echo '<p>DO-WHILE LOOP</p>'; // DO-WHILE LOOP

$i = 0;
do {
    $i++;
    echo 'Bye ' . $i . '&nbsp;&nbsp;&nbsp;';
} while($i <= 3);

?>
