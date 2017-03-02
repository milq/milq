# FUNCTIONS



'''
   Prints 'Hello, world!'
'''
def hello():
    print('Hello, world!')





'''
   Returns the square of a number
   @param {Number} x - Number to be squared.
   @returns {Number} y - Square of x
'''
def square(x):
    y = x * x
    return y





'''
   Returns the sum of a and b
   @param {Number} a - First number.
   @param {Number} b - Second number.
   @returns {Number} sum - Sum of a and b
'''
def my_sum(a, b):
    my_sum = a + b
    return my_sum





'''
   Returns the product of a and b
   @param {Number} a
   @param {Number} b
   @param {Boolean} retArr - If set to True, the function will return a list
   @returns {Number|List} - Product of a and b or a list that contains a, b and the product of a and b.
'''
def product(a, b, retArr):
    if retArr:
        return [a, b, a * b]

    return a * b




'''
   Returns the mean of a list of numbers, the square of a number, and a list of strings sorted in alphabetical order.
   @param {List} nmbs - List of numbers
   @param {Number} n - Number to be squared
   @param {List} strs - List of strings
   @returns {List} result - List that contains the mean of 'nmbs', the square of 'n', and a list of ordered strings
'''
def mean_square_sort(nmbs, n, strs):
    aux = 0
    for i in nmbs:
        aux = aux + i

    mean = aux / len(nmbs)

    squared = square(n)

    #  Clone and sort
    list_sorted = sorted(strs)

    result = [mean, squared, list_sorted]

    return result





'''
   Returns the factorial of a number (the number must be integer) using recursion
   @param {Number} x - Number that is an integer.
   @returns {List} res - The factorial of a number
'''
def factorial(x):
    if x <= 1:
        return 1

    res = x * factorial(x - 1)   # factorial is being called again
    return res




# CALLING FUNCTIONS

hello();


x = 2
sqr = square(x)
print('The square of', x, 'is', sqr)


s = my_sum(square(2), 3);
print('The sum of', square(2), 'and', 3, 'is', s)


p = product(4, my_sum(2, square(1)), True)
print('The product of', p[0], 'and', p[1], 'is', p[2])


latitudes = [-2.4, 7.4, 3, 4.6, -5]
number = my_sum(1, 1)
weather = ['sunny', 'cloudy', 'windy', 'rainy']
res = mean_square_sort(latitudes, number, weather)
print('Return of the \'mean_square_sort\' function:', res)


print('The factorial of', res[1], 'is', factorial(res[1]))


