//  CONDITIONALS
'use strict'

// COMPARISON OPERATORS

var a = 5
var b = 3

var z = a === b  // Equal to and the same type                  Result: False
z = a != b       // Not equal to or not the same type           Result: True
z = a >  b       // Greater than (type conversion)              Result: True
z = a >= b       // Greater than or equal to (type conversion)  Result: True
z = a <  b       // Less than (type conversion)                 Result: False
z = a <= b       // Less than or equal to (type conversion)     Result: False

// You can compare two strings too. For example, check: 'Patricia' == 'Patricia'  --> True



// LOGICAL OPERATORS

var f = false
var t = true

// Operator AND (&&)
z = f && f          // Result: False            (false && false) --> false
z = f && t          // Result: False            (false && true)  --> false
z = t && f          // Result: False            (true  && false) --> false
z = t && t          // Result: True             (true  && true)  --> true

// Operator OR (||)
z = f || f          // Result: False            (false || false) --> false
z = f || t          // Result: True             (false || true)  --> true
z = t || f          // Result: True             (true  || false) --> true
z = t || t          // Result: True             (true  || true)  --> true

// Operator NOT (!)
z = !f              // Result: True             !(false) --> true
z = !t              // Result: False            !(true)  --> false



// COMBINATION OF COMPARISON AND LOGICAL OPERATORS

a = 5
b = 3

z = !(a == b) || (a >= b && a != b)              // Result: True



// DECISIONS WITH IF

var number = 7
var age = 30
var mark = 9.5

var greater_than_zero = number > 0                     // Result: true

if (greater_than_zero) {                               // If statament
    console.log('The number is positive.')             // Execute this only if variable 'greater_than_zero' is true
}

if (number > 0) {                                      // If statament (popular alternative)
    console.log('The number is positive.')
}

if (age >= 18) {                                       // If-else statament
    console.log('You are of legal age.')
} else {
    console.log('You are not of legal age.')
}

if (mark < 5) {                                        // If-else-if statament
    console.log('Fail.')
} else if (mark >= 5 && mark < 7) {
    console.log('Pass.')
} else if (mark >= 7 && mark < 9) {
    console.log('Remarkable.')
} else {
    console.log('Excellent.')
}



// DATA TYPE IDENTIFICATION


var j = 6.37
var k = 'Hello'
var l = true
var m = [3.3, 'World', -1.3, false]


var is_number = typeof(j) === 'number'  // Check if variable 'j' is a number.       Result: True (False with Objects)
var is_str = typeof(k) === 'string'     // Check if variable 'k' is a string.       Result: True (False with Objects)
var is_bool = typeof(l) === 'boolean'   // Check if variable 'l' is a boolean.      Result: True (False with Objects)
var is_array = Array.isArray(m)         // Check if variable 'm' is an array.       Result: True



// EXAMPLE 1 (NESTED IFS): program to check if the input year is a leap year or not

var year = 2000

if (year % 4 == 0) {
    if (year % 100 == 0) {
        if (year % 400 == 0) {
            console.log(year, 'is a leap year.')
        } else {
            console.log(year, 'is not a leap year.')
        }
    } else {
        console.log(year, 'is a leap year.')
    }
} else {
    console.log(year, 'is not a leap year.')
}


// EXAMPLE 2: converter from Fahrenheit to Celsius and vice versa

var temperature = '113.0F'

var unit = temperature.slice(-1)
var value = Number(temperature.slice(0, -1))

if (unit == 'C' || unit == 'c') {
    var fahrenheit = (value * 1.8) + 32
    console.log(String(fahrenheit) + ' ºF')
}
if (unit == 'F' || unit == 'f') {
    var celcius = (value - 32) / 1.8
    console.log(String(celcius) + ' ºC')
}


