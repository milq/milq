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
#  identifier=value;

age='25'        # The value 25 is assigned to variable age



#  BASIC DATA (Bash does not segregate its variables by type, all variables are character strings)
age='25'                                  # Integer
temperature='-3.82'                       # Real number
name='Nacho López'                        # String
has_car='true'                            # Boolean (only two values: true or false)

# NOTE: Depending on context, Bash permits arithmetic operations and comparisons on variables.

#  ARITHMETIC OPERATIONS WITH NUMBERS
x='5'
y='2'

let z=x+y          # Addition.                                     Result: 7.
let z=x-y          # Subtraction.                                  Result: 3.
let z=x*y          # Multiplication.                               Result: 10.
z=$(bc -l <<< "${x}/${y}")   # Division.                           Result: 2.5.
let z=x%y          # Modulo (remainder of the integer division).   Result: 1.

let z=z+1          # Increase the value of z by 1.                 Result: 2.
let z=z-1          # Decrease the value of z by 1.                 Result: 1.

z=$(bc -l <<< "50 - ${x} * 6 / -0.5")    #
z=$(bc -l <<< "(50 - ${x}) * 6 / -0.5")  # The order of operations is as in mathematics
z=$(bc -l <<< "(50 - ${x} * 6) / -0.5")  #

# NOTE: Bash does not support floating-point arithmetic, you must delegate to a tool.
# ADVICE: If you operate with floating-point numbers or the result is a floating-point number, use the 'bc' tool.
# ADVICE: If you operate with integer numbers and the result is an integer number, use the 'let' tool.

#  BASIC OPERATIONS WITH STRINGS
a='GNU/'
b='Linux'
c=${a}${b}                                     # Concatenation     Result: 'GNU/Linux'.
d=$(printf %.s${a} {1..3})                     # Repetition        Result: 'GNU/GNU/GNU/'.
echo ${d}


#  PRINT VARIABLES ON SCREEN

echo 'Hello, world!'                     # Prints on screen: Hello, world!
echo ${x}                                # Prints the variable x

# You can print on screen strings and variables
echo 'I have bought' ${x} 'oranges and' ${y} 'lemons.'



#  DATA TYPE CONVERSION

# NOTE: Bash does not support data type conversion because Bash variables are character strings.












