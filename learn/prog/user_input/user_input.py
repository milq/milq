# Example of execution: python3 user_input.py -3.4 'Hello, world!' 6

import sys
 
a = sys.argv[0]
b = sys.argv[1]
c = sys.argv[2]
d = sys.argv[3]
e = sys.argv

print('Script name:', a)
print(' ')
print('First argument:', b)
print('Second argument:', c)
print('Third argument:', d)
print(' ')
print('All arguments are string. E.g. type of first argument:', type(b))
print(' ')
print ('Arguments inside a list:', e)
print ('The total numbers of arguments passed to the script:', len(e))
