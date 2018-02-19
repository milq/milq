#  CONDITIONALS


# COMPARISON OPERATORS

$a = 5
$b = 3

$z = $a -eq $b     # Equal to                           Result: False
$z = $a -ne $b     # Not equal to                       Result: True
$z = $a -gt $b     # Greater than                       Result: True
$z = $a -ge $b     # Greater than or equal to           Result: True
$z = $a -lt $b     # Less than                          Result: False
$z = $a -le $b     # Less than or equal to              Result: False

# You can compare two strings too. For example, check: 'Patricia' -eq 'Patricia'  --> True



# LOGICAL OPERATORS

$f = $False
$t = $True

# Operator AND (and)
$z = $f -and $f        # Result: False          (False and False) --> False
$z = $f -and $t        # Result: False          (False and True)  --> False
$z = $t -and $f        # Result: False          (True  and False) --> False
$z = $t -and $t        # Result: True           (True  and True)  --> True

# Operator OR (or)
$z = $f -or $f         # Result: False          (False or False) --> False
$z = $f -or $t         # Result: True           (False or True)  --> True
$z = $t -or $f         # Result: True           (True  or False) --> True
$z = $t -or $t         # Result: True           (True  or True)  --> True

# Operator NOT (not)
$z = -not $f       # Result: True           !(False) --> True
$z = -not $t       # Result: False          !(True)  --> False



# COMBINATION OF COMPARISON AND LOGICAL OPERATORS

$a = 5
$b = 3

$z = -not($a -eq $b) -or ($a -ge $b -and $a -ne $b) # Result: True



# DECISIONS WITH IF

$number = 7
$age = 30
$mark = 9.5

$greater_than_zero = $number -gt 0                  # Result: true

if ($greater_than_zero) {                           # If statament
    Write-Output('The number is positive.')         # Execute this only if variable 'greater_than_zero' is true
}

if ($number -gt 0) {                                # If statament (popular alternative)
    Write-Output('The number is positive.')
}

if ($age -ge 18) {                                  # If-else statament
    Write-Output('You are of legal age.')
} else {
    Write-Output('You are not of legal age.')
}

if ($mark -lt 5) {                                  # If-else-if statament
    Write-Output('Fail.')
} elseif ($mark -ge 5 -and $mark -lt 7) {
    Write-Output('Pass.')
} elseif ($mark -ge 7 -and $mark -lt 9) {
    Write-Output('Remarkable.')
} else {
    Write-Output('Excellent.')
}



# DATA TYPE IDENTIFICATION

$i = -4
$j = 6.37
$k = 'Hello'
$l = $True
$m = @(3.3, 'World', -1.3, $False)

$is_int = $i -is [int]              # Check if variable 'i' is an integer.      Result: True
$is_double = $j -is [double]        # Check if variable 'j' is a real number.   Result: True
$is_str = $k -is [string]           # Check if variable 'k' is a string.        Result: True
$is_bool = $l -is [bool]            # Check if variable 'l' is a Boolean.       Result: True
$is_array = $m -is [array]          # Check if variable 'm' is a array.         Result: True



# EXAMPLE 1 (NESTED IFS): program to check if the input year is a leap year or not

$year = 2000

if ($year % 4 -eq 0) {
    if ($year % 100 -eq 0) {
        if ($year % 400 -eq 0) {
            Write-Output([string] $year + ' is a leap year.')
        } else {
            Write-Output([string] $year + ' is not a leap year.')
        }
    } else {
        Write-Output([string] $year + ' is a leap year.')
    }
} else {
    Write-Output([string] $year + ' is not a leap year.')
}


# EXAMPLE 2: converter from Fahrenheit to Celsius and vice versa

$temperature = '113.0F'

$unit = $temperature.Substring($temperature.Length - 1)
$value = [double] $temperature.Substring(0, $temperature.Length - 1)

if ($unit -eq 'C' -or $unit -eq 'c') {
    $fahrenheit = ($value * 1.8) + 32
    Write-Output([string] $fahrenheit + ' ºF')
} if ($unit -eq 'F' -or $unit -eq 'f') {
    $celcius = ($value - 32) / 1.8
    Write-Output([string] $celcius + ' ºC')
}



