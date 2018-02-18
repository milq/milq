

# LISTS
#
# A list is a data structure consisting of a collection of elements (values or variables)

food = ['oranges', 'strawberries', 'lemons']

x = food[0]      # The first element is at index 0
y = food[1]      # The second element is at index 1
z = food[2]      # The third element is at index 2

print('I like', x, ', ', y, ', and', z)



# COUNT ELEMENTS IN A LIST

fruits = ['Apple', 'Banana', 'Watermelon', 'Peach', ' Nectarine']
num_fruits = len(fruits)          # The variable 'num_fruits' is 5 (the number of elements of the array 'fruits')
print('Number of fruits:', num_fruits)



# MODIFY A LIST ELEMENT

ages = [43, 72, 32, 22, 65]

ages[3] = 57                    # Modify the element at index 3. Result: [43, 72, 32, 57, 65]
ages[0] = 6                     # Modify the first element.      Result: [6, 72, 32, 57, 65]
ages[-1] = 12                   # Modify the last element.       Result: [6, 72, 32, 57, 12]

print(ages)



# ADD AN ELEMENT TO A LIST

names = ['Nacho', 'David', 'Lola']

names.insert(2, 'Alba')          # Add 'Alba' at index 2.         Result: ['Nacho', 'David', 'Alba', 'Lola']
names.insert(0, 'Álvaro')        # Add 'Álvaro' at the beginning. Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola']
names.append('Marta')            # Add 'Marta' at the end.        Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola', 'Marta']

print(names);



# REMOVE A LIST ELEMENT

colours = ['Blue', 'Orange', 'Green', 'Yellow', 'White']

colours.pop(2)                  # Remove the element at index 2. Result: ['Blue', 'Orange', 'Yellow', 'White']
colours.pop(0)                  # Remove the first element.      Result: ['Orange', 'Yellow', 'White']
colours.pop()                   # Remove the last element.       Result: ['Orange', 'Yellow']

print(colours)



# SUBLISTS [start:end]

vegetables = ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes']

veg1 = vegetables[:]                         # Result: ['Onions', 'Tomatoes', 'Spinach', 'Eggplants', 'Radishes']
veg2 = vegetables[2:]                        # Result: ['Spinach', 'Eggplants', 'Radishes']
veg3 = vegetables[2:4]                       # Result: ['Spinach', 'Eggplants']
veg4 = vegetables[-3:-2]                     # Result: ['Spinach']



# REVERSE ELEMENTS IN A LIST

numbers = [4, 5.6, -2.4, 20]
animals = ['Dog', 'Whale', 'Cat', 'Fox']

numbers_reversed = numbers[::-1]
animals_reversed = animals[::-1]

print(numbers_reversed)
print(animals_reversed)



# SORT ELEMENTS IN A LIST

numbers_sorted = sorted(numbers)

animals_sorted = sorted(animals)

print(numbers_sorted);
print(animals_sorted);



# MULTIDIMENSIONAL LISTS

a = [8, 1]
b = [3, 5, 7, 6]
c = [4, [10, 9], 2]

multi = [a, b, c]

d = multi[1][3]                              # Get the element at [1][3]. Variable 'd' is 6
multi[2][1][0] = -1                          # Modify the element at index [2][1][0]
print(multi)



# CREATE EMPTY LISTS

empty_1d_list = []                      # Create an empty list
empty_2d_list = [[]]                    # Create an empty two-dimensional list
empty_3d_list = [[[]]]                  # Create an empty three-dimensional list

my_list = [[], []]
my_list[0].append(2)
my_list[0].append('Marta')
my_list[1].append('Hi!')
my_list[1].append(3.4)
print(my_list)                          # Prints [[2, 'Marta'], ['Hi!', 3.4]]



# STRINGS AS ARRAYS OF CHARACTERS - SUBSTRINGS

phrase = 'Oranges are round, and oranges are juicy.'

num_chars = len(phrase)                      # The number of characters of the string 'phrase'. Result: 41.

p1 = phrase[23:]                             # Result: 'oranges are juicy.'
p2 = phrase[12:17]                           # Result: 'round'
p3 = phrase[-6:-1]                           # Result: 'juicy'
p4 = phrase[17:18]                           # Result: ','
p5 = phrase[-1:]                             # Result: '.'


