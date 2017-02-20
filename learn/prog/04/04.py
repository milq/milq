# LOOPS


print('CLASSICAL LOOP')  # CLASSICAL LOOP

for i in range(10):
    print('i:', i)




print('\nCLASSICAL LOOP WITH ARRAYS')  # CLASSICAL LOOP WITH ARRAYS

numbers = [-3.2, 5.3, 3, 1]

for i in range(len(numbers)):
    print(numbers[i])




print('\nREVERSE LOOP')  # REVERSE LOOP

for i in range(5, -1, -1):
    print('i:', i)




print('\nNESTED LOOP')  # NESTED LOOP

for i in range(3):
    print('i:', i)
    for j in range(2, 0, -1):
        print('j:', j)
        for k in range(2):
            print('k:', k)






print('\nITERATOR LOOP')  # ITERATOR LOOP

colors = ['red', 'green', 'blue', 'yellow']

for color in colors:
    print(color)




print('\nWHILE LOOP')  # WHILE LOOP

i = 0
while i <= 3:
    i = i + 1
    print('Hello', i)














print('\nEXAMPLE 1 (SUMMATION): sum up all the elements of an array') # EXAMPLE 1

my_array = [-4.3, 2, -0.7, 1.5, 3.5]
total_sum = 0

for i in range(len(my_array)):
    total_sum = total_sum + my_array[i]


print('The sum of all the elements of the array is', total_sum, '\n')



print('\nEXAMPLE 2 (PRODUCT): multiply all the elements of an array') # EXAMPLE 2

my_array = [3, 2, -1, 1, 4]
prod = 1

for i in range(len(my_array)):
    prod = prod * my_array[i]


print('The multiplication of all the elements of the array is', prod, '\n')


