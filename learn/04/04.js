'use strict';    //  LOOPS


console.log('CLASSICAL LOOP') // CLASSICAL LOOP

for (var i = 0; i < 10; i++) {
    console.log('i:', i)
}



console.log('CLASSICAL LOOP WITH ARRAYS') // CLASSICAL LOOP WITH ARRAYS

var numbers = [-3.2, 5.3, 3, 1]

for (var i = 0; i < numbers.length; ++i) {
    console.log(numbers[i])
}



console.log('\nREVERSE LOOP') // REVERSE LOOP

for (var i = 5; i >= 0; i--) {
    console.log('i:', i)
}



console.log('\nNESTED LOOP') // NESTED LOOP

for (var i = 0; i < 3; i++) {
    console.log('i:', i)
    for (var j = 2; j > 0; j--) {
        console.log('j:', j)
        for (var k = 0; k < 2; k++) {
            console.log('k:', k)
        }
    }
}



console.log('\nITERATOR LOOP') // ITERATOR LOOP

var colors = ['red', 'green', 'blue', 'yellow']

for (var color of colors) {
    console.log(color)
}



console.log('\nWHILE LOOP') // WHILE LOOP

i = 0
while (i <= 3) {
    i++
    console.log('Hello', i)
}



console.log('\nDO-WHILE LOOP') // DO-WHILE LOOP

i = 0
do {
    i++
    console.log('Bye', i)
} while(i <= 3)


