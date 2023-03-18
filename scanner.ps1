$ipAddress = (Get-NetAdapter -InterfaceDescription 'Wi-Fi').IPv4Address.IPAddress
$port = 80

Test-NetConnection -ComputerName $ipAddress -Port $port
