#!/bin/bash

# Example of execution: bash user_input.sh -3.4 'Hello, world!' 6


 
a=$0
b=$1
c=$2
d=$3
e=$4

echo "Script name: $a"
echo " "
echo "First argument: $b"
echo "Second argument: $c"
echo "Third argument: $d"
echo " "
echo "All arguments are string."
echo " "
echo "Expands to the positional parameters, starting from one. When the expansion occurs within double quotes, each parameter expands to a separate word: $@"
echo "The total numbers of arguments passed to the script: $#"
