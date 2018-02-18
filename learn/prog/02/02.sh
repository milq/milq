#!/bin/bash

# ARRAYS
#
# An array is a data structure consisting of a collection of elements (values or variables)

food=('oranges' 'strawberries' 'lemons')

x=${food[0]}     # The first element is at index 0
y=${food[1]}     # The second element is at index 1
z=${food[2]}     # The third element is at index 2

echo 'I like' ${x}',' ${y}', and' ${z}



# COUNT ELEMENTS IN AN ARRAY

fruits=('Apple' 'Banana' 'Watermelon' 'Peach' ' Nectarine')
num_fruits=${#fruits[@]}     # The variable 'num_fruits' is 5 (the number of elements of the array 'fruits')
echo 'Number of fruits:' ${num_fruits}



# MODIFY AN ARRAY ELEMENT

ages=('43' '72' '32' '22' '65')

ages[3]='57'                    # Modify the element at index 3. Result: [43, 72, 32, 57, 65]
ages[0]='6'                     # Modify the first element.      Result: [6, 72, 32, 57, 65]
ages[-1]='12'                   # Modify the last element.       Result: [6, 72, 32, 57, 12]

echo ${ages[@]}



# ADD AN ELEMENT TO AN ARRAY USING SUBARRAYS :start:length

names=('Nacho' 'David' 'Lola')

names=(${names[@]:0:2} 'Alba' ${names[@]:2})      # Add 'Alba' at index 2.         Result: ['Nacho', 'David', 'Alba', 'Lola']
names=('Alvaro' ${names[@]})                      # Add 'Álvaro' at the beginning. Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola']
names=(${names[@]} 'Marta')                       # Add 'Marta' at the end.        Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola', 'Marta']

echo ${names[@]}



# REMOVE AN ARRAY ELEMENT

colours=('Blue' 'Orange' 'Green' 'Yellow' 'White')

unset colours[2]                # Remove the element at index 2. Result: ['Blue', 'Orange', 'Yellow', 'White']
unset colours[0]                # Remove the first element.      Result: ['Orange', 'Yellow', 'White']
unset colours[-1]               # Remove the last element.       Result: ['Orange', 'Yellow']

echo ${colours[@]}



# SUBARRAYS :start:length

vegetables=('Onions' 'Tomatoes' 'Spinach' 'Eggplants' 'Radishes')

veg1=${vegetables[@]}                        # Result: ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes']
veg2=${vegetables[@]:2}                      # Result: ['Spinach', 'Eggplants', 'Radishes']
veg3=${vegetables[@]:2:2}                    # Result: ['Spinach', 'Eggplants']
veg4=${vegetables[@]:2:1}                    # Result: ['Spinach']



# REVERSE ELEMENTS IN A LIST

numbers=('4' '5.6' '-2.4' '20')
animals=('Dog' 'Whale' 'Cat' 'Fox')

numbers_reversed=($(printf '%s\n' ${numbers[@]} | tac | tr '\n' ' '))
animals_reversed=($(printf '%s\n' ${animals[@]} | tac | tr '\n' ' '))

echo ${numbers_reversed[@]}
echo ${animals_reversed[@]}



# SORT ELEMENTS IN AN ARRAY

numbers_sorted=($(printf '%s\n' ${numbers[@]} | sort -g))

animals_sorted=($(printf '%s\n' ${animals[@]} | sort))

echo ${numbers_sorted[@]}
echo ${animals_sorted[@]}



# MULTIDIMENSIONAL ARRAYS

# Bash does not support multidimensional arrays natively.
# You can simulate it with associative arrays.

declare -A multi     # Create an empty associative array
multi=([0,0]='8' [0,1]='1' [1,0]='3' [1,1]='5' [1,2]='7' [1,3]='6' [2,0]='4' [2,1,0]='10' [2,1,1]='9' [2,2]='2')

d=${multi[1,3]}                              # Get the element at key [1,3]. Variable 'd' is 6
multi[2,1,0]='-1'                            # Modify the element at key [2,1,0]
echo ${multi[@]}                             # Prints the elements in hash order. Check keys with echo ${!multi[@]}



# CREATE EMPTY ARRAYS

empty_1d_list=()                        # Create an empty array












# STRINGS AS ARRAYS OF CHARACTERS - SUBSTRINGS

phrase='Oranges are round, and oranges are juicy.'

num_chars=${#phrase}                         # The number of characters of the string 'phrase'. Result: 41.

p1=${phrase:23}                              # Result: 'oranges are juicy.'
p2=${phrase:12:5}                            # Result: 'round'
p3=${phrase:35:5}                            # Result: 'juicy'
p4=${phrase:17:1}                            # Result: ','
p5=${phrase:40:1}                            # Result: '.'


