
## A library/module/package is a collection of implementations
##
## 1. INTERNAL LIBRARY (STANDARD LIBRARY)           Included in the compiler/interpreter
## 2. EXTERNAL LIBRARY (THIRD-PARTY LIBRARY)     
## 3. OWN LIBRARY

import math             # Importing internal library
import random           # Importing internal library

import geometry         # Importing own library


#############################################################
## EXAMPLES OF USING INTERNAL LIBRARIES (STANDARD LIBRARY) ##
#############################################################

## MATH

x = 6.45
y = 2

z = math.pi             ## Constant π                               Result: 3.141592...
z = math.e              ## Constant e (Euler's constant)            Result: 2.718281...

z = math.pow(x, y)      ## Returns x raised to the power y
z = math.exp(x)         ## Returns the exponential function of a number.
z = math.log(x)         ## Returns the natural logarithm of a number.

z = abs(x)              ## Returns the absolute value of a number.

z = round(x)            ## Returns the value of a number rounded to the nearest integer.
z = math.floor(x)       ## Returns the largest integer less than or equal to a number.
z = math.ceil(x)        ## Returns the smallest integer greater than or equal to a number.

z = math.sin(x)         ## Returns the sine of an angle (angle is in radians).
z = math.cos(x)         ## Returns the cosine of an angle (angle in radians).
z = math.tan(x)         ## Returns the tangent of an angle (angle in radians).
z = math.atan(x)        ## Returns the arctangent of a number, in radians.
z = math.atan2(y, x)    ## Returns the arctangent of the quotient of its arguments (y over x), in radians.

z = max(x, y)       ## Returns the largest of zero or more numbers (try to use more numbers or a list).
z = min(x, y)       ## Returns the smallest of zero or more numbers (try to use more numbers or a list).


## RANDOM (BUILT-IN OBJECT)

z = random.random()         ## Returns a pseudo-random number between 0 and 1.  Example result: 0.64816...

## Getting a random integer between two values, inclusive (example: between -3 and 10, inclusive)
a = -3
b = 10
random_integer = random.randint(a, b)


## WRITE AND READ TEXT FILES (BUILT-IN FUNCTIONS)

filename = 'text.txt'
txt = 'Hello, world!' + '\n' + 'This is another text line!'

file1 = open(filename, 'w')     # Create a new text file (or override if a file with the same name already exists)
file1.write(txt)                # Write a string in a text file
file1.close()                   # Closes the file associated (it is mandatory)

file2 = open(filename, 'r')     # Open a text file for input operations. The file must exist.
content = file2.read()          # Assign all the text from the file in a string variable
file2.close()                   # Closes the file associated (it is mandatory)

print(content)


##################################
## EXAMPLES OF EXTERNAL LIBRARY ##
##################################

# To be completed



############################/
## EXAMPLES OF OWN LIBRARY ##
############################/

p1 = geometry.Point(2, -1)
p2 = geometry.Point(-2, 2)

euc_dist = geometry.euclidean_distance(p1, p2)

print(euc_dist)


