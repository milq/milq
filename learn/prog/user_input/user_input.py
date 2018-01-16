import sys
 
total = len(sys.argv)

cmdargs = str(sys.argv)

print ('The total numbers of arguments passed to the script:', total)

print ("Args list: %s " % cmdargs)

# Pharsing argument one by one 

print('Script name:', sys.argv[0])
print('First argument', sys.argv[1])
print('Second argument', sys.argv[2])
