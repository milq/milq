#  CONDITIONALS


# COMPARISON OPERATORS

a = 5
b = 3

z = a == b     # Equal to                           Result: False
z = a != b     # Not equal to                       Result: True
z = a >  b     # Greater than                       Result: True
z = a >= b     # Greater than or equal to           Result: True
z = a <  b     # Less than                          Result: False
z = a <= b     # Less than or equal to              Result: False

# You can compare two strings too. For example, check: 'Patricia' == 'Patricia'  --> True



# LOGICAL OPERATORS

f = False
t = True

# Operator AND (and)
z = f and f        # Result: False          (False and False) --> False
z = f and t        # Result: False          (False and True)  --> False
z = t and f        # Result: False          (True  and False) --> False
z = t and t        # Result: True           (True  and True)  --> True

# Operator OR (or)
z = f or f         # Result: False          (False or False) --> False
z = f or t         # Result: True           (False or True)  --> True
z = t or f         # Result: True           (True  or False) --> True
z = t or t         # Result: True           (True  or True)  --> True

# Operator NOT (not)
z = not(f)         # Result: True           !(False) --> True
z = not(t)         # Result: False          !(True)  --> False



# COMBINATION OF COMPARISON AND LOGICAL OPERATORS

a = 5
b = 3

z = not(a == b) or (a >= b and a != b)              # Result: True



# DECISIONS WITH IF

number = 7
age = 30
mark = 9.5

greater_than_zero = number > 0                      # Result: true

if greater_than_zero:                               # If statament
    print('The number is positive.')                # Execute this only if variable 'greater_than_zero' is true


if number > 0:                                      # If statament (popular alternative)
    print('The number is positive.')


if age >= 18:                                       # If-else statament
    print('You are of legal age.')
else:
    print('You are not of legal age.')


if mark < 5:                                        # If-else-if statament
    print('Fail.')
elif mark >= 5 and mark < 7:
    print('Pass.')
elif mark >= 7 and mark < 9:
    print('Remarkable.')
else:
    print('Excellent.')




# DATA TYPE IDENTIFICATION

i = -4
j = 6.37
k = 'Hello'
l = True
m = [3.3, 'World', -1.3, False]

is_int = isinstance(i, int)         # Check if variable 'i' is an integer.      Result: True
is_float = isinstance(j, float)     # Check if variable 'j' is a real number.   Result: True
is_str = isinstance(k, str)         # Check if variable 'k' is a string.        Result: True
is_bool = isinstance(l, bool)       # Check if variable 'l' is a Boolean.       Result: True
is_list = isinstance(m, list)       # Check if variable 'm' is a list.          Result: True



# EXAMPLE 1 (NESTED IFS): program to check if the input year is a leap year or not

year = 2000

if year % 4 == 0:
    if year % 100 == 0:
        if year % 400 == 0:
            print(year, 'is a leap year.')
        else:
            print(year, 'is not a leap year.')
    else:
        print(year, 'is a leap year.')
else:
    print(year, 'is not a leap year.')





# EXAMPLE 2: converter from Fahrenheit to Celsius and vice versa

temperature = '113.0F'

unit = temperature[-1:]
value = float(temperature[:-1])

if unit == 'C' or unit == 'c':
    fahrenheit = (value * 1.8) + 32
    print(str(fahrenheit) + ' ºF')
if unit == 'F' or unit == 'f':
    celcius = (value - 32) / 1.8
    print(str(celcius) + ' ºC')




