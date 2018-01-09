#!/bin/bash

# This is a comment

: '
   This is a comment
   on multiple lines
'

#  VARIABLES
#
#  A variable is a symbol that represents a quantity that may vary.
#
#  let identifier=value;

let age=25      # The value 25 is assigned to variable age



#  BASIC DATA TYPES
let age=25                                # Integer
let temperature=-3.82                     # Real number
let name='Nacho López'                    # String
let has_car=true                          # Boolean (only two values: true or false)



#  ARITHMETIC OPERATIONS WITH NUMBERS
let x=5
let y=2

let z=x+y         # Addition.                                     Result: 7.
let z=x-y         # Subtraction.                                  Result: 3.
let z=x*y         # Multiplication.                               Result: 10.
let z=x/y         # Division.                                     Result: 2.5.
let z=x%y         # Modulo (remainder of the integer division).   Result: 1.

let z=z+1         # Increase the value of z by 1.                 Result: 2.
let z=z-1         # Decrease the value of z by 1.                 Result: 1.

let z= 50 - x * 6 / -0.5          #
let z = (50 - x) * 6 / -0.5        # The order of operations is as in mathematics
let z = (50 - x * 6) / -0.5        #

z = 2 * z + 3                  # Remember: the symbol = assigns a value to the variable



#  BASIC OPERATIONS WITH STRINGS
a = 'GNU/'
b = 'Linux'
c = a + b                # Concatenation                          Result: 'GNU/Linux'.
c = a * 3                # Repetition                             Result: 'GNU/GNU/GNU/'.



#  PRINT VARIABLES ON SCREEN

print('Hello, world!')                   # Prints on screen: Hello, world!
print(x)                                 # Prints the variable x

# You can print on screen strings and variables
print('I have bought', x, 'oranges and', y, 'lemons.')



#  DATA TYPE CONVERSION

height = '95.4'
print(type(height))                          # Prints the current data type
height = float(height)                       # Convert a string to a real number
print(type(height))

altitude = -544.432
print(type(altitude))
altitude = str(altitude)                     # Convert a real number to string
print(type(altitude))


