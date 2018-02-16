'use strict'

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

var age = 25   // The value 25 is assigned to variable age



// BASIC DATA TYPES

var temperature = -3.82                  // Number
var name = 'Nacho López'                 // String
var has_car = true                       // Boolean (only two values: true or false)



// ARITHMETIC OPERATIONS WITH NUMBERS
var x = 5
var y = 2

var z = x + y     // Addition.                                     Result: 7.
z = x - y         // Subtraction.                                  Result: 3.
z = x * y         // Multiplication.                               Result: 10.
z = x / y         // Division.                                     Result: 2.5.
z = x % y         // Modulo (remainder of the integer division).   Result: 1.

z++               // Increase the value of z by 1.                 Result: 2.
z--               // Decrease the value of z by 1.                 Result: 1.

z = 50 - x * 6 / -0.5         //
z = (50 - x) * 6 / -0.5       // The order of operations is as in mathematics
z = (50 - x * 6) / -0.5       //

z = 2 * z + 3                 // Remember: the symbol = assigns a value to the variable



// BASIC OPERATIONS WITH STRINGS
var a = 'GNU/'
var b = 'Linux'
var c = a + b                                 // Concatenation     Result: 'GNU/Linux'.
c = a.repeat(3)                               // Repetition        Result: 'GNU/GNU/GNU/'.



// PRINT VARIABLES ON CONSOLE

console.log('Hello, world!')            // Prints on screen: Hello, world!
console.log(x)                          // Prints the variable x

// You can print on console strings and variables
console.log('I have bought', x, 'oranges and', y, 'lemons.')



// DATA TYPE CONVERSION


var calories = '95.4'
var altitude = -544.432


var calories_flt = Number(calories)       // Convert to number.
var altitude_str = String(altitude)       // Convert to string.


var calories_type = typeof(calories_flt)  // Type: number.
var altitude_type = typeof(altitude_str)  // Type: string.


