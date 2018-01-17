# Example of execution: python3 user_input.py -3.4 'Hello, world!' 6

import sys
 
a = sys.argv[0]
b = sys.argv[1]
c = sys.argv[2]
d = sys.argv[3]

print('Script name:', a)
print(' ')
print('First argument:', b)
print('Second argument:', c)
print('Third argument:', d)
print(' ')
print('All arguments are string. E.g. type of first argument:', type(b))
print(' ')

total = len(sys.argv)
print ('The total numbers of arguments passed to the script:', total)

cmdargs = str(sys.argv)
print ("Arguments list: %s " % cmdargs)
