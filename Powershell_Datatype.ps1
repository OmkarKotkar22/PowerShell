$a = 2
$b = 20.23
[char]$c = '0'
$d = "Hello World"

$a.GetType().name
$b.GetType().name
$c.GetType().name
$d.GetType().name

#typecasting

<#Type Casting
In PowerShell, you can cast variables to a specific type using the syntax [Type]$variable.
#>
[int]$e = 5.6
$e.GetType().name

Write-Output "The value of a is: $a"
Write-Output "The value of b is: $b"
Write-Output "The value of c is: $c"
Write-Output "The value of d is: $d"
Write-Output "The value of e is: $e"
