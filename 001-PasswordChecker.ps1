$password = Read-Host "Enter your password"

if ($password.Length -ge 13) {
    Write-Host "Password is strong"
}
elseif ($password.Length -ge 8) {
    Write-Host "Password is good"
}
else {
    Write-Host "Password is weak"
}
