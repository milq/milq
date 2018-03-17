<?php

// ARRAYS
//
// An array is a data structure consisting of a collection of elements (values or variables)

$food = ['oranges', 'strawberries', 'lemons'];

$x = $food[0];      // The first element is at index 0
$y = $food[1];      // The second element is at index 1
$z = $food[2];      // The third element is at index 2

echo 'I like ' . $x . ', ' . $y . ', and ' . $z . PHP_EOL;



// COUNT ELEMENTS IN AN ARRAY

$fruits = ['Apple', 'Banana', 'Watermelon', 'Peach', ' Nectarine'];
$num_fruits = count($fruits);     // The variable 'num_fruits' is 5 (the number of elements of the array 'fruits')
echo 'Number of fruits: ' . $num_fruits . PHP_EOL;



// MODIFY AN ARRAY ELEMENT

$ages = [43, 72, 32, 22, 65];

$ages[3] = 57;                 // Modify the element at index 3. Result: [43, 72, 32, 57, 65]
$ages[0] = 6;                  // Modify the first element.      Result: [6, 72, 32, 57, 65]
$ages[count($ages) - 1] = 12;  // Modify the last element.       Result: [6, 72, 32, 57, 12]

print_r($ages);
echo '<br />';


// ADD AN ELEMENT TO AN ARRAY

$names = ['Nacho', 'David', 'Lola'];

array_splice($names, 2, 0, 'Alba');  // Add 'Alba' at index 2.         Result: ['Nacho', 'David', 'Alba', 'Lola']
array_unshift($names, 'Álvaro');     // Add 'Álvaro' at the beginning. Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola']
array_push($names, 'Marta');         // Add 'Marta' at the end.        Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola', 'Marta']

print_r($names);
echo '<br />';


// REMOVE AN ARRAY ELEMENT

$colours = ['Blue', 'Orange', 'Green', 'Yellow', 'White'];

array_splice($colours, 2, 1);  // Remove the element at index 2. Result: ['Blue', 'Orange', 'Yellow', 'White']
array_shift($colours);         // Remove the first element.      Result: ['Orange', 'Yellow', 'White']
array_pop($colours);           // Remove the last element.       Result: ['Orange', 'Yellow']

print_r($colours);
echo '<br />';


// SUBARRAYS: the 'array_slice(array, offset, length)' method returns the selected elements in an array, as a new array object.

$vegetables = ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes'];

$veg1 = array_slice($vegetables, 0);        // Result: ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes']
$veg2 = array_slice($vegetables, 2);        // Result: ['Spinach', 'Eggplants', 'Radishes']
$veg3 = array_slice($vegetables, 2, 2);     // Result: ['Spinach', 'Eggplants']
$veg4 = array_slice($vegetables, -3, -2);   // Result: ['Spinach']



// REVERSE ELEMENTS IN AN ARRAY

$numbers = [4, 5.6, -2.4, 20];
$animals = ['Dog', 'Whale', 'Cat', 'Fox'];

$numbers_reversed = array_reverse($numbers);
$animals_reversed = array_reverse($animals);

print_r($numbers_reversed); echo '<br />';
print_r($animals_reversed); echo '<br />';



// SORT ELEMENTS IN AN ARRAY

$numbers_sorted = $numbers;
sort($numbers_sorted);
$animals_sorted = $animals;
sort($animals_sorted);
print_r($numbers_sorted); echo '<br />';
print_r($animals_sorted); echo '<br />';



// MULTIDIMENSIONAL ARRAYS

$a = [8, 1];
$b = [3, 5, 7, 6];
$c = [4, [10, 9], 2];

$multi = [$a, $b, $c];

$d = $multi[1][3];                          // Get the element at [1][3]. Variable 'd' is 6
$multi[2][1][0] = -1;                       // Modify the element at index [2][1][0]
print_r($multi); echo '<br />';



// CREATE EMPTY ARRAYS

$empty_1d_list = [];                    // Create an empty array
$empty_2d_list = [[]];                  // Create an empty two-dimensional array
$empty_3d_list = [[[]]];                // Create an empty three-dimensional array

$my_list = [[], []];
array_push($my_list[0], 2);
array_push($my_list[0], 'Marta');
array_push($my_list[1], 'Hi!');
array_push($my_list[1], 3.4);
print_r($my_list); echo '<br />';                       // Prints [[2, 'Marta'], ['Hi!', 3.4]]



// STRINGS AS ARRAYS OF CHARACTERS - SUBSTRINGS

$phrase = 'Oranges are round, and oranges are juicy.';

$num_chars = strlen($phrase);               // The number of characters of the string 'phrase'. Result: 41.

$p1 = substr($phrase, 23);                  // Result: 'oranges are juicy.' substr(string, start, length)
$p2 = substr($phrase, 12, 5);               // Result: 'round'
$p3 = substr($phrase, -6, -1);              // Result: 'juicy'
$p4 = substr($phrase, 17, 1);               // Result: ','
$p5 = substr($phrase, -1);                  // Result: '.'

?>
