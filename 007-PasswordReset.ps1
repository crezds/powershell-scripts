$username = Read-Host "Enter your username"
$department = Read-Host "Enter your department"
$tempPassword = "Welcome123!"

Write-Host "Username: $username"
Write-Host "Department: $department"
Write-Host "Temporary Password: $tempPassword"

$passwordChanged = Read-Host "Did the user change their password? (yes/no)"

if ($passwordChanged -eq "yes"){
    Write-Host "Password reset complete"
}
    else {
        Write-Host "User must change password immediately"
    }

if ($department -eq "Finance"){
    Write-Host "Finance accounts require verification"
}