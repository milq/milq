'use strict'

// ARRAYS
//
// An array is a data structure consisting of a collection of elements (values or variables)

var food = ['oranges', 'strawberries', 'lemons']

var x = food[0]      // The first element is at index 0
var y = food[1]      // The second element is at index 1
var z = food[2]      // The third element is at index 2

console.log('I like', x, ',', y, ', and', z)



// COUNT ELEMENTS IN AN ARRAY

var fruits = ['apple', 'banana', 'watermelon', 'peach', ' nectarine']
var num_fruits = fruits.length    // The variable 'num_fruits' is 5 (the number of elements of the array 'fruits')
console.log('Number of fruits:', num_fruits)



// MODIFY AN ARRAY ELEMENT

var ages = [43, 72, 32, 22, 65]

ages[3] = 57                  // Modify the element at index 3. Result: [43, 72, 32, 57, 65]
ages[0] = 6                   // Modify the first element.      Result: [6, 72, 32, 57, 65]
ages[ages.length - 1] = 12    // Modify the last element.       Result: [6, 72, 32, 57, 12]

console.log(ages)



// ADD AN ELEMENT TO AN ARRAY

var names = ['Nacho', 'Lola', 'David']

names.splice(2, 0, 'Alba')      // Add 'Alba' at index 2.         Result: ['Nacho', 'Lola', 'Alba', 'David']
names.unshift('Álvaro')         // Add 'Álvaro' at the beginning. Result: ['Álvaro', 'Nacho', 'Lola', 'Alba', 'David']
names.push('Marta')             // Add 'Marta' at the end.        Result: ['Álvaro', 'Nacho', 'Lola', 'Alba', 'David', 'Marta']

console.log(names)



// REMOVE AN ARRAY ELEMENT

var colours = ['Blue', 'Orange', 'Green', 'Yellow', 'White']

colours.splice(2, 1)           // Remove the element at index 2. Result: ['Blue', 'Orange', 'Yellow', 'White']
colours.shift()               // Remove the first element.      Result: ['Orange', 'Yellow', 'White']
colours.pop()                 // Remove the last element.       Result: ['Orange', 'Yellow']

console.log(colours)



// SUBARRAYS: the 'slice(start, end)' method returns the selected elements in an array, as a new array object.

var vegetables = ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes']

var veg1 = vegetables.slice()              // Result: ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes']
var veg2 = vegetables.slice(2)             // Result: ['Spinach', 'Eggplants', 'Radishes']
var veg3 = vegetables.slice(2, 4)          // Result: ['Spinach', 'Eggplants']
var veg4 = vegetables.slice(-3, -2)        // Result: ['Spinach']



// REVERSE ELEMENTS IN AN ARRAY

var numbers = [4, 5.6, -2.4, 20]
var animals = ['Dog', 'Whale', 'Cat', 'Fox']

var numbers_reversed = numbers.slice().reverse()
var animals_reversed = animals.slice().reverse()

console.log(numbers_reversed)
console.log(animals_reversed)



// SORT ELEMENTS IN AN ARRAY

var numbers_sorted = numbers.slice().sort((a,b)=>a-b)

var animals_sorted = animals.slice().sort()

console.log(numbers_sorted)
console.log(animals_sorted)



// MULTIDIMENSIONAL ARRAYS

var a = [8, 1]
var b = [3, 5, 7, 6]
var c = [4, [10, 9], 2]

var multi = [a, b, c]

var d = multi[1][3]                        // Get the element at [1][3]. Variable 'd' is 6
multi[2][1][0] = -1                        // Modify the element at index [2][1][0]
console.log(multi)



// CREATE EMPTY ARRAYS

var empty_1d_list = []                     // Create an empty array
var empty_2d_list = [[]]                   // Create an empty two-dimensional array
var empty_3d_list = [[[]]]                 // Create an empty three-dimensional array

var my_list = [[], []]
my_list[0].push(2)
my_list[0].push('Marta')
my_list[1].push('Hi!')
my_list[1].push(3.4)
console.log(my_list)                       // Prints [[2, 'Marta'], ['Hi!', 3.4]]



// STRINGS AS ARRAYS OF CHARACTERS - SUBSTRINGS

var phrase = 'Oranges are round, and oranges are juicy.'

var num_chars = phrase.length              // The number of characters of the string 'phrase'. Result: 41.

var p1 = phrase.slice(23)                  // Result: 'oranges are juicy.'
var p2 = phrase.slice(12, 17)              // Result: 'round'
var p3 = phrase.slice(-6, -1)              // Result: 'juicy'
var p4 = phrase.slice(17, 18)              // Result: ','
var p5 = phrase.slice(-1)                  // Result: '.'


