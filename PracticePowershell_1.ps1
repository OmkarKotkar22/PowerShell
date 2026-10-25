"This is Test file for Powershell Practice"

("This is Test Text String").GetType() #getting type of string

("Abcdef").Length #getting length

Get-help #getting help

Get-Command #getting command

Get-Alias #getting alias

md Omkar #making folder
rd Omkar #removing folder

mkdir Omii #making folder

rmdir Omii #removing folder

type nul >Testing.txt #creating file

del Testing.txt #deleting file

xcopy Omkar.txt "Practice" #copying file from source to destination

xcopy *.txt "Practice" #copying all text files from source to destination

move Omkar.txt "Practice" #moving file from source to destination

move *.txt "Practice" #moving all text files from source to destination

Start-Process notepad | Stop-Process -Name notepad #starting and stopping process

Get-Command *Service* #getting command related to service

Get-Command *Process* #getting command related to process

Get-ChildItem -Path "D:\Process_Studio_Application\process-studio\Shadowing_Tasks" #getting child items in folder

$folderPath = "D:\Process_Studio_Application\process-studio\Shadowing_Tasks\Powershell_Task" #getting folder path

New-Item -Path "D:\Process_Studio_Application\process-studio\Shadowing_Tasks\Powershell_Task\Practice" -ItemType Directory #`creating new folder

Test-Path "D:\Process_Studio_Application\process-studio\Shadowing_Tasks\Powershell_Task\Practice" #checking if folder exists

Get-Command -Name "Copy-Item" -Syntax #getting syntax of command

Copy-Item -path "D:\Process_Studio_Application\process-studio\Shadowing_Tasks\Powershell_Task\Test_a.txt" -Destination "D:\Process_Studio_Application\process-studio\Shadowing_Tasks\Powershell_Task\Practice\Test_a.txt" #copying file from source to destination

Get-Command -Name "" -Syntax #getting syntax of command

Get-Member -InputObject "This is Test Text String" #getting member of string

ToByte -Name "" -Syntax #getting syntax of command

#String Datatype
$name = "Omkar"
Write-Output $name


#Integer Datatype
$No = 9
Write-Output $No


#Date Datatype
$today = Get-Date
Write-Output $today


#Boolean Datatype
$active = $true
Write-Output $active


#Array Datatype
$names = @("A", "B", "C")
Write-Output $names
$names.Count
$names[0]

#HashTable Datatype
$hash = @{Name = "A"; Dept = "IT"}
Write-Output $hash

#operator and COnditional Logic
#eq  equal
$No -eq 21

#-ne not equal to
$No -ne 21

#-gt greater than
$No -gt 21

#-le Less than
$No -le 21

#like
$name -like "John"


#If /If-else /else
$salary = 30000
if($salary -gt 45000){
    "High Salary Band"
}
elseif($salary -gt 25000){
    "Middle Salary Band"
}
else{
    "Entry Salary Band"
}

#Switch Case
$status = "Active"
switch ($status){
    "Active" {"Acc is Active"}
    "Disabled" {"Acc is Disabled"}
    default {"Unknown Status"}
}

#Comparison
$names = @("Rahul", "Amit", "Vishal")
if($name -contains "Amit"){
    Write-Output "Employee Found"
}
else{
    Write-Output "Employee Not Found"
}

#foreach loop
$emp_names = @("Rahul", "Amit", "Vishal")
foreach($emp_name in $emp_names){
    Write-Output "Employee : $emp_name"
}

#for loop
for($i = 1; $i -le 5; $i++){
    Write-Output "Iteration $i"
}

#while loop
$counter = 1
while($counter -le 3){
    Write-Output $counter
    $counter++
}

#Function with parameter
function Get-Greeting{
    "Hello, $Name"
}

Get-Greeting -Name "Omkar"

#Return objects from functions
function Get-EmployeeSummery{
    [pscustomobject]@{
        Name = $name
        Dept = $Department
        CreatedAt = Get-Date
    }
}

Get-EmployeeSummery -Name "Omkar" -Dept "IT"