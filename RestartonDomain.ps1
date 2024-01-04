Write-Host "Made by vMawk"
Write-Host "-------------"
Write-Host "github.com/vmawk"
Write-Host "-------------"
$ComputerName = Read-Host "Enter the name of the computer you want to restart or shutdown"
$Operation = Read-Host "Do you want to restart or shutdown the computer? (R/S)"
$Delay = Read-Host "Do you want to specify a delay time? (Y/N)"

if ($Delay -eq "Y") {
    $DelayTime = Read-Host "Enter the delay time in seconds"
    Start-Sleep -Seconds $DelayTime
}

if ($Operation -eq "R") {
    Restart-Computer -ComputerName $ComputerName -Force
    Write-Host "Restart operation completed."
} elseif ($Operation -eq "S") {
    Stop-Computer -ComputerName $ComputerName -Force
    Write-Host "Shutdown operation completed."
}
