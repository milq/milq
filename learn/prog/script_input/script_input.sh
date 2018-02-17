#!/bin/bash

# Example of execution: bash script_input.sh -3.4 'Hello, world!' 6



argv=(${@})
b=${argv[0]}
c=${argv[1]}
d=${argv[2]}
e=${argv[3]}

echo ' '
echo 'Arguments obtained (array):' ${argv[@]}
echo ' '
echo 'Number of arguments:' ${#argv[@]}
echo ' '
echo 'Script name:' ${b}
echo ' '
echo 'First argument:' ${c}
echo 'Second argument:' ${d}
echo 'Third argument:' ${e}
echo ' '
echo 'All arguments are strings.'
echo ' '


