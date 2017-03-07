'use strict'
// A library/module/package is a collection of implementations
//
// 1. INTERNAL LIBRARY (STANDARD LIBRARY)      
// 2. EXTERNAL LIBRARY (THIRD-PARTY LIBRARY)        
// 3. OWN LIBRARY

var fs = require('fs')              // Importing internal Node.js library

var geo = require('./geometry.js')  // Importing own library



//////////////////////////////////////////
// EXAMPLES OF USING INTERNAL LIBRARIES //
//////////////////////////////////////////

// MATH (BUILT-IN OBJECT)

var x = 5
var y = 2

var z = Math.PI         // Constant π                               Result: 3.141592...
z = Math.E              // Constant e (Euler's constant)            Result: 2.718281...

z = Math.pow(x, y)      // Returns x raised to the power y
z = Math.exp(x)         // Returns the exponential function of a number.
z = Math.log(x)         // Returns the natural logarithm of a number.

z = Math.abs(x)         // Returns the absolute value of a number.

z = Math.round(x)       // Returns the value of a number rounded to the nearest integer.
z = Math.floor(x)       // Returns the largest integer less than or equal to a number.
z = Math.ceil(x)        // Returns the smallest integer greater than or equal to a number.

z = Math.sin(x)         // Returns the sine of an angle (angle is in radians).
z = Math.cos(x)         // Returns the cosine of an angle (angle in radians).
z = Math.tan(x)         // Returns the tangent of an angle (angle in radians).
z = Math.atan(x)        // Returns the arctangent of a number, in radians.
z = Math.atan2(y, x)    // Returns the arctangent of the quotient of its arguments (y over x), in radians.

z = Math.max(x, y)      // Returns the largest of zero or more numbers (try to use more numbers).
z = Math.min(x, y)      // Returns the smallest of zero or more numbers (try to use more numbers).


// RANDOM (BUILT-IN OBJECT)

z = Math.random()           // Returns a pseudo-random number between 0 and 1.  Example result: 0.64816...

// Getting a random integer between two values, inclusive (example: between -3 and 10, inclusive)
var min = Math.ceil(-3)
var max = Math.floor(10)
var random_integer = Math.floor(Math.random() * (max - min + 1)) + min


// WRITE AND READ TEXT FILES (USING BUILT-IN NODE.JS MODULE)

var filename = 'text.txt'
var txt = 'Hello, world!' + '\n' + 'This is another text line!'


fs.writeFileSync(filename, txt, (err) => {if (err) throw err})          // Write a string in a new text file



var content = fs.readFileSync(filename, 'utf8')     // Assign all the text from the file in a string variable


console.log(content)


//////////////////////////////////////////
// EXAMPLES OF USING EXTERNAL LIBRARIES //
//////////////////////////////////////////

// To be completed



////////////////////////////
// EXAMPLES OF OWN MODULE //
////////////////////////////

var p1 = new geo.Point(2, -1)
var p2 = new geo.Point(-2, 2)

var euc_dist = geo.euclidean_distance(p1, p2)

console.log(euc_dist)


