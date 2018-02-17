

# Example of execution: python3 input_script.py -3.4 'Hello, world!' 6

import sys

a = sys.argv
b = sys.argv[0]
c = sys.argv[1]
d = sys.argv[2]
e = sys.argv[3]

print(' ')
print('Arguments obtained (list):', a)
print(' ')
print('Number of arguments:', len(a))
print(' ')
print('Script name:', b)
print(' ')
print('First argument:', c)
print('Second argument:', d)
print('Third argument:', e)
print(' ')
print('All arguments are strings. E.g. type of second argument:', type(d))
print(' ')


