

# Example of execution: pwsh user_input.ps1 -3.4 'Hello, world!' 6



$a = $MyInvocation.MyCommand.Name
$b = $args[0]
$c = $args[1]
$d = $args[2]
$e = $args[3]

Write-Host 'Script name:' 
Write-Host ' '
Write-Host 'First argument:' $b
Write-Host 'Second argument:' $c
Write-Host 'Third argument:' $d
Write-Host ' '
Write-Host 'All arguments are string. E.g. type of first argument:' $b.GetType()
Write-Host ' '
Write-Host 'Arguments inside an array:' $args
Write-Host 'The total numbers of arguments passed to the script:' $args.Length;
