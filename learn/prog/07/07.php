<?php
// A library/module/package is a collection of implementations
//
// 1. INTERNAL LIBRARY (STANDARD LIBRARY)       
// 2. EXTERNAL LIBRARY (THIRD-PARTY LIBRARY)       
// 3. OWN LIBRARY



require('./geometry.php');          // Importing own library



//////////////////////////////////////////
// EXAMPLES OF USING INTERNAL LIBRARIES //
//////////////////////////////////////////

// MATH (BUILT-IN FUNCTIONS)

$x = 5;
$y = 2;

$z = M_PI;              // Constant π                               Result: 3.141592...
$z = M_E;               // Constant e (Euler's constant)            Result: 2.718281...

$z = pow($x, $y);       // Returns x raised to the power y
$z = exp($x);           // Returns the exponential function of a number.
$z = log($x);           // Returns the natural logarithm of a number.

$z = abs($x);           // Returns the absolute value of a number.

$z = round($x);         // Returns the value of a number rounded to the nearest integer.
$z = floor($x);         // Returns the largest integer less than or equal to a number.
$z = ceil($x);          // Returns the smallest integer greater than or equal to a number.

$z = sin($x);           // Returns the sine of an angle (angle is in radians).
$z = cos($x);           // Returns the cosine of an angle (angle in radians).
$z = tan($x);           // Returns the tangent of an angle (angle in radians).
$z = atan($x);          // Returns the arctangent of a number, in radians.
$z = atan2($y, $x);     // Returns the arctangent of the quotient of its arguments (y over x), in radians.

$z = max($x, $y);       // Returns the largest of zero or more numbers (try to use more numbers).
$z = min($x, $y);       // Returns the smallest of zero or more numbers (try to use more numbers).


// RANDOM (BUILT-IN FUNCTIONS)

$z = rand() / getrandmax();         // Returns a pseudo-random number between 0 and 1.  Example result: 0.64816...

// Getting a random integer between two values, inclusive (example: between -3 and 10, inclusive)
$min = -3;
$max = 10;
$random_integer = rand($min, $max);


// WRITE AND READ TEXT FILES (BUILT-IN FUNCTIONS)

$filename = 'text.txt';
$txt = 'Hello, world!' . PHP_EOL . 'This is another text line!';

$file1 = fopen($filename, 'w');     // Create a new text file (or override if a file with the same name already exists)
fwrite($file1, $txt);               // Write a string in a text file
fclose($file1);                     // Closes the file associated (it is mandatory)

$file2 = fopen($filename, 'r');                 // Open a text file for input operations. The file must exist.
$content = fread($file2, filesize($filename));  // Assign all the text from the file in a string variable
fclose($file2);                                 // Closes the file associated (it is mandatory)

echo $content;


//////////////////////////////////////////
// EXAMPLES OF USING EXTERNAL LIBRARIES //
//////////////////////////////////////////

// To be completed



/////////////////////////////////////
// EXAMPLES OF USING OWN LIBRARIES //
/////////////////////////////////////

$p1 = new Point(2, -1);
$p2 = new Point(-2, 2);

$euc_dist = euclidean_distance($p1, $p2);

echo $euc_dist;

?>
