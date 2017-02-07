'use strict';

// ARRAYS
//
// An array is a data structure consisting of a collection of elements (values or variables)

var food = ['oranges', 'strawberries', 'lemons'];

var x = food[0];      // The first element is at index 0
var y = food[1];      // The second element is at index 1
var z = food[2];      // The third element is at index 2

console.log('I like', x, ',', y, ', and', z);



// COUNT ELEMENTS IN AN ARRAY

var fruits = ['apple', 'banana', 'watermelon', 'peach', ' nectarine'];
var num_fruits = fruits.length;    // The variable 'num_fruits' is 5 (the number of elements of the array 'fruits')
console.log(num_fruits);



// ADD AN ELEMENT TO AN ARRAY

var names = ['Nacho', 'Lola', 'David']

names.splice(2, 0, 'Alba');      // Add 'Alba' at index 2.         Result: ['Nacho', 'Lola', 'Alba', 'David']
names.unshift('Álvaro');         // Add 'Álvaro' at the beginning. Result: ['Álvaro', 'Nacho', 'Lola', 'Alba', 'David']
names.push('Marta');             // Add 'Marta' at the end.        Result: ['Álvaro', 'Nacho', 'Lola', 'Alba', 'David', 'Marta']

console.log(names);



// MODIFY AN ARRAY ELEMENT

var ages = [43, 72, 32, 22, 65];

ages[3] = 57;                  // Modify the element at index 3. Result: [43, 72, 32, 57, 65]
ages[0] = 6;                   // Modify the first element.      Result: [6, 72, 32, 57, 65]
ages[ages.length - 1] = 12;    // Modify the last element.       Result: [6, 72, 32, 57, 12]

console.log(ages);



// REMOVE AN ARRAY ELEMENT

var colours = ['Blue', 'Orange', 'Green', 'Yellow', 'White'];

colours.splice(2, 1)           // Remove the element at index 2. Result: ['Blue', 'Orange', 'Yellow', 'White']
colours.shift();               // Remove the first element.      Result: ['Orange', 'Yellow', 'White']
colours.pop();                 // Remove the last element.       Result: ['Orange', 'Yellow']

console.log(colours);



// REVERSE ELEMENTS IN AN ARRAY

var numbers = [4, 5.6, -2.4, 20];
var animals = ['Dog', 'Whale', 'Cat', 'Fox'];

var numbers_reversed = numbers.slice().reverse();
var animals_reversed = animals.slice().reverse();

console.log(numbers_reversed);
console.log(animals_reversed);



// SORT ELEMENTS IN AN ARRAY

var numbers_sorted = numbers.slice().sort((a,b)=>a-b);

var animals_sorted = animals.slice().sort();

console.log(numbers_sorted);
console.log(animals_sorted);



// MULTIDIMENSIONAL ARRAYS

var a = [8, 1];
var b = [3, 5, 7, 6];
var c = [4, 9, 2];

var multi = [a, b, c];

console.log(multi);
console.log(multi[1][3]);             // Prints the number 6

