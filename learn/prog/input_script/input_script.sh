#!/bin/bash

# Example of execution: bash input_script.sh -3.4 'Hello, world!' 6



args=(${@})
b=${argv[0]}
c=${argv[1]}
d=${argv[2]}
e=${argv[3]}

echo ' '
echo 'Arguments obtained (array):' ${args[@]}
echo ' '
echo 'Number of arguments:' ${#args[@]}
echo ' '
echo 'Script name:' ${b}
echo ' '
echo 'First argument:' ${c}
echo 'Second argument:' ${d}
echo 'Third argument:' ${e}
echo ' '
echo 'All arguments are strings.'
echo ' '


