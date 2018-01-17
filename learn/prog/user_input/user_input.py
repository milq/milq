import sys
 
a = sys.argv[0]
b = sys.argv[1]
c = sys.argv[2]

print('Script name:', sys.argv[0])
print('First argument:', sys.argv[1])
print('Second argument:', sys.argv[2])
print('Third argument:', sys.argv[3])

total = len(sys.argv)
print ('The total numbers of arguments passed to the script:', total)

cmdargs = str(sys.argv)
print ("Arguments list: %s " % cmdargs)
