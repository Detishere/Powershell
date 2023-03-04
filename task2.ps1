
$user= Get-Content "Documents\IITwork\Powershell\input1.txt"
$details = $user.Split(",")
$username = $details[0]
$fullname = $details[1]
$Password = ConvertTo-SecureString "1234" -AsPlainText -Force
New-LocalUser -Name $username -FullName $fullname -Description "Created using PowerShell" -Password $password