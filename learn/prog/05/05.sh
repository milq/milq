#!/bin/bash

# FUNCTIONS


# Prints 'Hello, world!'

function hello() 
{
    echo "Hello, world!"
}



# Returns the square of a number
# @param {Number} x - Number to be squared.
# @returns {Number} y - Square of x

function square()
{
    let y=$x*$x
    echo $y
}



# Returns the sum of a and b
# @param {Number} a - First number.
# @param {Number} b - Second number.
# @returns {Number} sum - Sum of a and b
 
function sum()
{
    let sum=$a+$b
    echo $sum
}










## CALLING FUNCTIONS

hello


x=2
sqr=$(square)
echo "The square of $x is $sqr" 


a=$sqr
b=3
s=$(sum)
echo "The sum of $a and $b is $s"
