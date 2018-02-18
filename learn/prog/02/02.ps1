

# ARRAYS
#
# An array is a data structure consisting of a collection of elements (values or variables)

$food = @('oranges', 'strawberries', 'lemons')

$x = $food[0]        # The first element is at index 0
$y = $food[1]        # The second element is at index 1
$z = $food[2]        # The third element is at index 2

Write-Output('I like ' + $x + ', ' + $y + ', and ' + $z);



# COUNT ELEMENTS IN AN ARRAY

$fruits = @('Apple', 'Banana', 'Watermelon', 'Peach', ' Nectarine')
$num_fruits = $fruits.Length      # The variable 'num_fruits' is 5 (the number of elements of the array 'fruits')
Write-Output('Number of fruits: ' + $num_fruits)



# MODIFY AN ARRAY ELEMENT

$ages = @(43, 72, 32, 22, 65)

$ages[3] = 57                   # Modify the element at index 3. Result: [43, 72, 32, 57, 65]
$ages[0] = 6                    # Modify the first element.      Result: [6, 72, 32, 57, 65]
$ages[-1] = 12                  # Modify the last element.       Result: [6, 72, 32, 57, 12]

Write-Output([String]::Join(' ', $ages))        # Join permits printing the elements in the same line



# ADD AN ELEMENT TO AN ARRAY

$names = @('Nacho', 'David', 'Lola')

$names = $names[0..1] + @('Alba') + $names[2..($names.Length - 1)]     # Add 'Alba' at index 2.         Result: ['Nacho', 'David', 'Alba', 'Lola']
$names = @('Álvaro') + $names                                          # Add 'Álvaro' at the beginning. Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola']
$names = $names + @('Marta')                                           # Add 'Marta' at the end.        Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola', 'Marta']

Write-Output([String]::Join(' ', $names))



# REMOVE AN ARRAY ELEMENT

$colours = @('Blue', 'Orange', 'Green', 'Yellow', 'White')

$colours = $colours[0..1 + 3..($colours.Length - 1)]   # Remove the element at index 2. Result: ['Blue', 'Orange', 'Yellow', 'White']
$colours = $colours[1..($colours.Length - 1)]          # Remove the first element.      Result: ['Orange', 'Yellow', 'White']
$colours = $colours[0..($colours.Length - 2)]          # Remove the last element.       Result: ['Orange', 'Yellow']

Write-Output([String]::Join(' ', $colours))



# SUBARRAYS [start..end]

$vegetables = @('Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes')

$veg1 = $vegetables[0..($vegetables.Length - 1)]     # Result: ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes']
$veg2 = $vegetables[2..($vegetables.Length - 1)]     # Result: ['Spinach', 'Eggplants', 'Radishes']
$veg3 = $vegetables[2..3]                            # Result: ['Spinach', 'Eggplants']
$veg4 = $vegetables[-3..-3]                          # Result: ['Spinach']



# REVERSE ELEMENTS IN AN ARRAY

$numbers = @(4, 5.6, -2.4, 20)
$animals = @('Dog', 'Whale', 'Cat', 'Fox')

$numbers_reversed = $numbers.Clone(); [array]::Reverse($numbers_reversed)
$animals_reversed = $animals.Clone(); [array]::Reverse($animals_reversed)

Write-Output([String]::Join(' ', $numbers_reversed))
Write-Output([String]::Join(' ', $animals_reversed))



# SORT ELEMENTS IN AN ARRAY

$numbers_sorted = $numbers | Sort-Object

$animals_sorted = $animals | Sort-Object

[String]::Join(' ', $numbers_sorted)
[String]::Join(' ', $animals_sorted)



# MULTIDIMENSIONAL ARRAYS (this example is not a truly multidimensional array, you need to use the .Net Framework)

$a = @(8, 1)
$b = @(3, 5, 7, 6)
$c = @(4, @(10, 9), 2)

$multi = @($a, $b, $c)

$d = $multi[1][3]                            # Get the element at [1][3]. Variable 'd' is 6
$multi[2][1][0] = -1                         # Modify the element at index [2][1][0]
ConvertTo-Json $multi



# CREATE EMPTY ARRAYS

$empty_1d_list = @()                    # Create an empty array
$empty_2d_list = @(@())                 # Create an empty two-dimensional array (not a truly multidimensional array)
$empty_3d_list = @(@(@()))              # Create an empty three-dimensional array (not a truly multidimensional array)

$my_list = @(@(), @())
$my_list[0] = $my_list[0] + @(2)
$my_list[0] = $my_list[0] + @('Marta')
$my_list[1] = $my_list[1] + @('Hi!')
$my_list[1] = $my_list[1] + @(3.4)
ConvertTo-Json $my_list                 # Prints [[2, 'Marta'], ['Hi!', 3.4]]



# STRINGS AS ARRAYS OF CHARACTERS - SUBSTRINGS

$phrase = 'Oranges are round, and oranges are juicy.'

$num_chars = $phrase.Length                  # The number of characters of the string 'phrase'. Result: 41.

$p1 = $phrase.Substring(23)                  # Result: 'oranges are juicy.'
$p2 = $phrase.Substring(12, 5)               # Result: 'round'
$p3 = $phrase.Substring(35, 5)               # Result: 'juicy'
$p4 = $phrase.Substring(17, 1)               # Result: ','
$p5 = $phrase.Substring($phrase.Length - 1)  # Result: '.'


