$OutputFile = "Documents\IITwork\Powershell\output.txt"

$SystemInfo = Get-ComputerInfo

$SystemInfoJson = $SystemInfo | ConvertTo-Json

$SystemInfoJson | Out-File -FilePath $OutputFile
