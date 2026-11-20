$userCount = [int](Read-Host "Enter the number of users to check")
$count = 1
$alertCount = 0

while ($count -le $userCount){
    $username = Read-Host "Enter your username"
    $failedLogins = [int](Read-Host "How many failed logins?")

    if ($failedLogins -ge 5){
        Write-Host "ALERT: Investigate account $username"
        $alertCount = $alertCount + 1
    }

    else {
        Write-Host "$username appears normal"
    }

    $count = $count + 1
}
Write-Host ""
Write-Host "Summary"
Write-Host "--------"
Write-Host "Users checked: $userCount"
Write-Host "Alerts raised: $alertCount"