#Prints 'Hello, world!'

function hello {
   echo "Hello, world"
}

hello


# Returns the square of a number
# @param {Number} x - Number to be squared.
# @returns {Number} y - Square of x

function square($x)
{
    $y = $x * $x;
    return $y;
}

square 10


# Returns the sum of a and b
# @param {Number} a - First number.
# @param {Number} b - Second number.
# @returns {Number} sum - Sum of a and b

function sum($a, $b)
{
    $sum = $a + $b;
    return $sum;
}

sum 10 5


# FUNCTIONS
