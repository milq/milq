

# Example of execution: ./input_script.ps1 -3.4 'Hello, world!' 6



$a = $args
$b = $MyInvocation.MyCommand.Name
$c = $args[0]
$d = $args[1]
$e = $args[2]

Write-Output(' ')
Write-Output('Arguments obtained (array): ' + $a)
Write-Output(' ')
Write-Output('Number of arguments: ' + $a.Length)
Write-Output(' ')
Write-Output('Script name: ' + $b)
Write-Output(' ')
Write-Output('First argument: ' + $c)
Write-Output('Second argument: ' + $d)
Write-Output('Third argument: ' + $e)
Write-Output(' ')
Write-Output('All arguments are strings. E.g. type of second argument: ' + $d.GetType().FullName)
Write-Output(' ')


