$username = Read-Host "Enter your username"
$softwareName = Read-Host "Name of the software?"
$managerApproval = Read-Host "Manager approval received? (yes/no)"

if ($managerApproval -eq "yes") {
    Write-Host "Installation approved for $username"
}
    else {
        Write-Host "Installation denied for $username"
    }

if (($softwareName -eq "Wireshark") -or ($softwareName -eq "Process Monitor")){
    Write-Host "Security review required"
} 