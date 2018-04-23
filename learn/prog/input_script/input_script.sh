#!/bin/bash

# Example of execution: bash input_script.sh -3.4 'Hello, world!' 6



<<<<<<< HEAD
argv=(${@})
b=${argv[0]}
c=${argv[1]}
d=${argv[2]}
e=${argv[3]}
=======
args=(${@})
script_name=${args[0]}
a=${args[1]}
b=${args[2]}
c=${args[3]}
>>>>>>> 673a80cd7e3bf9b167448c721cf3bb437e672169

echo ' '
echo 'Arguments obtained (array):' ${args[@]}
echo ' '
echo 'Number of arguments:' ${#}
echo ' '
echo 'Script name:' ${script_name}
echo ' '
echo 'First argument:' ${a}
echo 'Second argument:' ${b}
echo 'Third argument:' ${c}
echo ' '
echo 'All arguments are strings.'
echo ' '


