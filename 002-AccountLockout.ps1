$correctPassword = "Passw0rd123!"
$password = Read-Host "Enter your password"
$count = 3

while ($password -ne $correctPassword -and $count -gt 1) {

    Write-Host "Password is incorrect. Please try again."
    $password = Read-Host "Enter your password"
    $count = $count - 1

    Write-Host "Attempts remaining: $count"

    if ($password -eq $correctPassword) {
        Write-Host "Access granted"
    }
}
if ($password -ne $correctPassword) {
    Write-Host "Account Locked"
}