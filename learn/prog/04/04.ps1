# LOOPS


Write-Output('CLASSICAL LOOP')  # CLASSICAL LOOP

for ($i = 0; $i -lt 10; $i++) {
    Write-Output('i: ' + $i)
}



Write-Output('CLASSICAL LOOP WITH ARRAYS')  # CLASSICAL LOOP WITH ARRAYS

$numbers = @(-3.2, 5.3, 3, 1)

for ($i = 0; $i -lt $numbers.Length; $i++) {
    Write-Output($numbers[$i])
}



Write-Output('REVERSE LOOP')     # REVERSE LOOP

for ($i = 5; $i -gt -1; $i--) {
    Write-Output('i: ' + $i)
}



Write-Output('NESTED LOOP')      # NESTED LOOP

for ($i = 0; $i -lt 3; $i++) {
    Write-Output('i: ' + $i)
    for ($j = 2; $j -gt 0; $j--) {
        Write-Output('j: ' + $j)
        for ($k = 0; $k -lt 2; $k++) {
            Write-Output('k: ' + $k)
        }
    }
}



Write-Output('ITERATOR LOOP')    # ITERATOR LOOP

$colors = @('red', 'green', 'blue', 'yellow')

foreach ($color in $colors) {
    Write-Output($color)
}



Write-Output('WHILE LOOP')       # WHILE LOOP

$i = 0
while ($i -le 3) {
    $i++
    Write-Output('Hello ' + $i)
}













Write-Output('EXAMPLE 1 (SUMMATION): sum up all the elements of an array')  # EXAMPLE 1

$my_array = @(-4.3, 2, -0.7, 1.5, 3.5)
$total_sum = 0

for ($i = 0; $i -lt $my_array.Length; $i++) {
    $total_sum = $total_sum + $my_array[$i]
}

Write-Output('The sum of all the elements of the array is ' + $total_sum)



Write-Output('EXAMPLE 2 (PRODUCT): multiply all the elements of an array') # EXAMPLE 2

$my_array= @(3, 2, -1, 1, 4)
$prod = 1

for ($i = 0; $i -lt $my_array.Length; $i++) {
    $prod = $prod * $my_array[$i]
}

Write-Output('The multiplication of all the elements of the array is ' + $prod)


