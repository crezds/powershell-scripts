$requestCount = [int](Read-Host "How many unlock requests?")
$count = 1
$unlockedCount = 0
$escalatedCount = 0

while ($count -le $requestCount){
    $username = Read-Host "Enter your username"
    $department = Read-Host "Enter your department"

    if ($username -eq "admin"){
        Write-Host "ACCESS DENIED: admin account requires escalation"
        $escalatedCount = $escalatedCount + 1
    }
    
    else {
        Write-Host "Unlocking account for $username"
        $unlockedCount = $unlockedCount + 1
    }
    
    $count = $count + 1
}

Write-Host ""
Write-Host "Summary"
Write-Host "-----------"
Write-Host "Accounts unlocked: $unlockedCount"
Write-Host "Escalations: $escalatedCount"