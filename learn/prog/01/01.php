<?php

// This is a comment

/*
   This is a comment
   on multiple lines
*/

// VARIABLES
//
// A variable is a symbol that represents a quantity that may vary.
//
// $identifier = value;

$age = 25;     // The value 25 is assigned to variable age



// BASIC DATA TYPES
$sea_level = 25;                         // Integer
$temperature = -3.82;                    // Real number
$name = 'Nacho López';                   // String
$has_car = true;                         // Boolean (only two values: true or false)



// ARITHMETIC OPERATIONS WITH NUMBERS
$x = 5;
$y = 2;

$z = $x + $y;     // Addition.                                     Result: 7.
$z = $x - $y;     // Subtraction.                                  Result: 3.
$z = $x * $y;     // Multiplication.                               Result: 10.
$z = $x / $y;     // Division.                                     Result: 2.5.
$z = $x % $y;     // Modulo (remainder of the integer division).   Result: 1.

$z++;             // Increase the value of z by 1.                 Result: 2.
$z--;             // Decrease the value of z by 1.                 Result: 1.

$z = 50 - $x * 6 / -0.5;      //
$z = (50 - $x) * 6 / -0.5;    // The order of operations is as in mathematics
$z = (50 - $x * 6) / -0.5;    //

$z = 2 * $z + 3;              // Remember: the symbol = assigns a value to the variable



// BASIC OPERATIONS WITH STRINGS
$a = 'GNU/';
$b = 'Linux';
$c = $a . $b;                                 // Concatenation     Result: 'GNU/Linux'.
$c = str_repeat($a, 3);                       // Repetition        Result: 'GNU/GNU/GNU/'.



// PRINT VARIABLES ON SCREEN

echo 'Hello, world!' . PHP_EOL;         // Prints on screen: Hello, world!
echo $x . PHP_EOL;                      // Prints the variable x

// You can print on screen strings and variables
echo 'I have bought ' . $x . ' oranges and ' . $y . ' lemons.' . PHP_EOL;



// DATA TYPE CONVERSION

$position = '5';
$calories = '95.4';
$altitude = -544.432;

$position_int = (int) $position;          // Convert to integer.
$calories_flt = (float) $calories;        // Convert to float.
$altitude_str = (string) $altitude;       // Convert to string.

$position_type = gettype($position_int);  // Type: integer.
$calories_type = gettype($calories_flt);  // Type: float.
$altitude_type = gettype($altitude_str);  // Type: string.

?>
