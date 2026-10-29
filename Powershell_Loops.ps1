# Loops in PowerShell

# For Loop
for ($i = 1; $i -le 5; $i++) {
    Write-Output "Iteration: $i"
}

# ForEach Loop
$numbers = @(1, 2, 3, 4, 5)
foreach ($num in $numbers) {
    Write-Output "Number: $num"
}

# While Loop
$count = 1
while ($count -le 5) {
    Write-Output "While Loop Iteration: $count"
    $count++
}

# Do-While Loop
$count = 1
do {
    Write-Output "Do-While Loop Iteration: $count"
    $count++
} while ($count -le 5)


#do-until loop
$count = 1
do {
    Write-Output "Do-Until Loop Iteration: $count"
    $count++
} until ($count -gt 5)

#Break Statements
for ($i = 1; $i -le 10; $i++) {
    if ($i -eq 5) {
        Write-Output "Breaking the loop at iteration: $i"
        break
    }
    Write-Output "Iteration: $i"
}

#Continue Statements
for ($i = 1; $i -le 10; $i++) {
    if ($i -eq 5) {
        Write-Output "Skipping iteration: $i"
        continue
    }
    Write-Output "Iteration: $i"
}