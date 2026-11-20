# Device Compliance Checker
# Checks whether devices meet compliance requirements:
# BitLocker enabled
# Antivirus enabled
# Windows 11 or later

$deviceCount = [int](Read-Host "How many machines are you checking?")
$count = 1

while ($count -le $deviceCount){
    $deviceName = Read-Host "Enter the device name"
    $bitLocker = Read-Host "Is BitLocker enabled? (yes/no):"      
    $antivirus = Read-Host "Is AntiVirus enabled? (yes/no):"     
    $osVersion  = [int](Read-Host "Enter OS version:")

    if ($bitlocker -eq "yes" -and $antivirus -eq "yes" -and $osVersion -ge 11){
        Write-Host "$deviceName is COMPLIANT"
    }
    
    else {
        Write-Host "$deviceName is NON-COMPLIANT"
    }

    $count = $count + 1
}