'use strict' // FUNCTIONS



/**
 * Prints 'Hello, world!'
 */
function hello()
{
    console.log('Hello, world!')
}



/**
 * Returns the square of a number
 * @param {Number} x - Number to be squared.
 * @returns {Number} y - Square of x
 */
function square(x)
{
    var y = x * x
    return y
}



/**
 * Returns the sum of a and b
 * @param {Number} a - First number.
 * @param {Number} b - Second number.
 * @returns {Number} sum - Sum of a and b
 */
function sum(a, b)
{
    var sum = a + b
    return sum
}



/**
 * Returns the product of a and b
 * @param {Number} a
 * @param {Number} b
 * @param {Boolean} retArr - If set to true, the function will return an array
 * @returns {Number|Array} - Product of a and b or an array that contains a, b and the product of a and b.
 */
function product(a, b, retArr) {
    if (retArr) {
        return [a, b, a * b]
    }
    return a * b
}



/**
 * Returns the mean of an array of numbers, the square of a number, and an array of strings sorted in alphabetical order.
 * @param {Array} nmbs - Array of numbers
 * @param {Number} n - Number to be squared
 * @param {Array} strs - Array of strings
 * @returns {Array} result - Array that contains the mean of 'nmbs', the square of 'n', and an array of ordered strings
 */
function mean_square_sort(nmbs, n, strs)
{
    var aux = 0
    for (var i = 0; i < nmbs.length; i++) {
        aux = aux + nmbs[i]
    }
    var mean = aux / nmbs.length

    var squared = square(n)

    // Clone and sort
    var array_sorted = strs.slice().sort()

    var result = [mean, squared, array_sorted]

    return result
}



/**
 * Returns the factorial of a number (the number must be integer) using recursion
 * @param {Number} x - Number that is an integer.
 * @returns {Array} res - The factorial of a number
 */
function factorial(x) {
    if (x <= 1) {
        return 1
    }
    var res = x * factorial(x - 1)  // factorial is being called again
    return res
}



// CALLING FUNCTIONS

hello()


var x = 2
var sqr = square(x)
console.log('The square of', x, 'is', sqr)


var s = sum(square(2), 3)
console.log('The sum of', square(2), 'and', 3, 'is', s)


var p = product(4, sum(2, square(1)), true)
console.log('The product of', p[0], 'and', p[1], 'is', p[2])


var latitudes = [-2.4, 7.4, 3, 4.6, -5]
var number = sum(1, 1)
var weather = ['sunny', 'cloudy', 'windy', 'rainy']
var res = mean_square_sort(latitudes, number, weather)
console.log('Return of the \'mean_square_sort\' function:', res)


console.log('The factorial of', res[1], 'is', factorial(res[1]))


