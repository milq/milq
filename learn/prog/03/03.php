<?php //  CONDITIONALS


// COMPARISON OPERATORS

$a = 5;
$b = 3;

$z = $a === $b;   // Equal to and the same type                 Result: False
$z = $a !== $b;   // Not equal to or not the same type          Result: True
$z = $a > $b;     // Greater than (type conversion)             Result: True
$z = $a >= $b;    // Greater than or equal to (type conversion) Result: True
$z = $a < $b;     // Less than (type conversion)                Result: False
$z = $a <= $b;    // Less than or equal to (type conversion)    Result: False

// You can compare two strings too. For example, check: 'Patricia' == 'Patricia'  --> True



// LOGICAL OPERATORS

$f = false;
$t = true;

// Operator AND (&&)
$z = $f && $f;         // Result: False         (false && false) --> false
$z = $f && $t;         // Result: False         (false && true)  --> false
$z = $t && $f;         // Result: False         (true  && false) --> false
$z = $t && $t;         // Result: True          (true  && true)  --> true

// Operator OR (||)
$z = $f || $f;         // Result: False         (false || false) --> false
$z = $f || $t;         // Result: True          (false || true)  --> true
$z = $t || $f;         // Result: True          (true  || false) --> true
$z = $t || $t;         // Result: True          (true  || true)  --> true

// Operator NOT (!)
$z = !$f;             // Result: True           !(false) --> true
$z = !$t;             // Result: False          !(true)  --> false



// COMBINATION OF COMPARISON AND LOGICAL OPERATORS

$a = 5;
$b = 3;

$z = !($a === $b) || ($a >= $b && $a !== $b);              // Result: True



// DECISIONS WITH IF

$number = 7;
$age = 30;
$mark = 9.5;

$greater_than_zero = $number > 0;                       // Result: true

if ($greater_than_zero) {                              // If statament
    echo '<p>The number is positive.</p>';             // Execute this only if variable 'greater_than_zero' is true
}

if ($number > 0) {                                     // If statament (popular alternative)
    echo '<p>The number is positive.</p>';
}

if ($age >= 18) {                                      // If-else statament
    echo '<p>You are of legal age.</p>';
} else {
    echo '<p>You are not of legal age.</p>';
}

if ($mark < 5) {                                       // If-else-if statament
    echo '<p>Fail.</p>';
} elseif ($mark >= 5 && $mark < 7) {
    echo '<p>Pass.</p>';
} elseif ($mark >= 7 && $mark < 9) {
    echo '<p>Remarkable.</p>';
} else {
    echo '<p>Excellent.</p>';
}



// DATA TYPE IDENTIFICATION

$i = -4;
$j = 6.37;
$k = 'Hello';
$l = true;
$m = [3.3, 'World', -1.3, false];

$is_int = is_int($i);                   // Check if variable 'i' is an integer.     Result: True
$is_float = is_float($j);               // Check if variable 'j' is a real number.  Result: True
$is_str = is_string($k);                // Check if variable 'k' is a string.       Result: True
$is_bool = is_bool($l);                 // Check if variable 'l' is a Boolean.      Result: True
$is_array = is_array($m);               // Check if variable 'm' is an array.       Result: True



// EXAMPLE 1 (NESTED IFS): program to check if the input year is a leap year or not

$year = 2000;

if ($year % 4 === 0) {
    if ($year % 100 === 0) {
        if ($year % 400 === 0) {
            echo '<p>' . $year . ' is a leap year.</p>';
        } else {
            echo '<p>' . $year . ' is not a leap year.</p>';
        }
    } else {
        echo '<p>' . $year . ' is a leap year.</p>';
    }
} else {
    echo '<p>' . $year . ' is not a leap year.</p>';
}


// EXAMPLE 2: converter from Fahrenheit to Celsius and vice versa

$temperature = '113.0F';

$unit = substr($temperature, -1);
$value = (float) substr($temperature, 0, strlen($temperature) - 1);

if ($unit === 'C' || $unit === 'c') {
    $fahrenheit = ($value * 1.8) + 32;
    echo '<p>' . (string) $fahrenheit . ' ºF</p>';
}
if ($unit === 'F' || $unit === 'f') {
    $celcius = ($value - 32) / 1.8;
    echo '<p>' . (string) $celcius . ' ºC</p>';
}

?>
