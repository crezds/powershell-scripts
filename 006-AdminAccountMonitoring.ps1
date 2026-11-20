$userCount = [int](Read-Host "How many users do you want to check?")
$count = 1
$alertCount = 0
$normalCount = 0

while ($count -le $userCount) {
    $username = Read-Host "Enter your username"
    $failedLogins = [int](Read-Host "How many failed logins?")

    if (($failedLogins -ge 5) -or ($username -eq "admin")) {
        Write-Host "ALERT: Investigate account $username"
        $alertCount = $alertCount + 1
    }
    else {
        Write-Host "$username appears normal"
        $normalCount = $normalCount + 1
    }

    $count = $count + 1
}

Write-Host ""
Write-Host "Summary"
Write-Host "----------"
Write-Host "Users checked: $userCount"
Write-Host "Alerts raised: $alertCount"
Write-Host "Normal accounts: $normalCount"