# Decision Statements in PowerShell

# If-Else Statement
$age = 25
if ($age -ge 18) {
    Write-Output "You are an adult."
} else {
    Write-Output "You are not an adult."
}

# If-ElseIf-Else Statement
$score = 85
if ($score -ge 90) {
    Write-Output "Grade: A"
} elseif ($score -ge 80) {
    Write-Output "Grade: B"
} else {
    Write-Output "Grade: C"
}

# Switch Statement
$dayOfWeek = (Get-Date).DayOfWeek
switch ($dayOfWeek) {
    "Monday" { Write-Output "It's Monday." }
    "Tuesday" { Write-Output "It's Tuesday." }
    "Wednesday" { Write-Output "It's Wednesday." }
    "Thursday" { Write-Output "It's Thursday." }
    "Friday" { Write-Output "It's Friday." }
    "Saturday" { Write-Output "It's Saturday." }
    "Sunday" { Write-Output "It's Sunday." }
    default { Write-Output "Invalid day of the week." }
}

# Nested If Statement
$temperature = 30
if ($temperature -ge 30) {
    Write-Output "It's hot outside."
    if ($temperature -ge 35) {
        Write-Output "Stay hydrated!"
    }
} else {
    Write-Output "The weather is pleasant."
}

