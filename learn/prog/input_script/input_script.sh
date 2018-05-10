#!/bin/bash

# Example of execution: bash input_script.sh -3.4 'Hello, world!' 6

args=(${@})

echo ' '
echo 'Array of arguments:' ${args[@]}
echo ' '
echo 'Number of arguments:' ${#}
echo ' '
echo 'Script name:' ${0}
echo ' '
echo 'First argument:' ${args[0]}
echo 'Second argument:' ${args[1]}
echo 'Third argument:' ${args[2]}
echo ' '
echo 'All arguments are strings.'
echo ' '
