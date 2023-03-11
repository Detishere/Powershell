$targetTime = Read-Host "Enter the target date and time (MM/dd/yyyy hh:mm:ss AM/PM):"

$targetTime = [DateTime]::ParseExact($targetTime, "MM/dd/yyyy hh:mm:ss tt", $null)

while ((Get-Date) -lt $targetTime) {
    Write-Host "Waiting for target time..."
    Start-Sleep -Seconds 1
}
Get-ChildItem "Documents\New folder" -Recurse | Copy-Item -Destination "Documents\New folder2" -Recurse -Container


