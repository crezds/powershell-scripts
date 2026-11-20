$username = Read-Host "Enter your username"
$softwareName = Read-Host "Name of the software?"
$managerApproval = Read-Host "Manager approval received? (yes/no)"

if ($managerApproval -eq "yes") {
    Write-Host "Installation approved"
}
    else {
        Write-Host "Installation denied"
    }

if (($softwareName -eq "Wireshark") -or ($softwareName -eq "Process Monitor")){
    Write-Host "Security review required"
} 