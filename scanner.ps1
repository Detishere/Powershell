$ipAddress = (Get-NetIPAddress -AddressFamily IPv4 | Select-Object -ExpandProperty IPAddress)[0]
$port = 80

Test-NetConnection -ComputerName $ipAddress -Port $port
