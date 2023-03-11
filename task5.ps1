$targetTime = Get-Date "3/11/2023 07:00 PM" 
while ((Get-Date) -lt $targetTime) { Start-Sleep -Seconds 1 }
Get-ChildItem "Documents\New folder" -Recurse | Copy-Item -Destination "Documents\New folder2" -Recurse -Container
