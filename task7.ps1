$now = Get-Date

$NewUsers = Get-LocalUser | Where-Object { $_.Enabled -eq $true -and $_.CreateDate -ge $now.AddDays(-1) }

if ($NewUsers) {
    # Create the output text file and write the list of new user accounts
    Out-File -FilePath "output.txt" -InputObject "The following new user accounts were created in the last 24 hours:`r`n"
    foreach ($user in $NewUsers) {
        Out-File -FilePath "output.txt" -Append -InputObject "$($user.Name) ($($user.SID)) created on $($user.CreateDate)`r`n"
    }
    
    Write-Host "New user accounts found. Output written to output.txt"
}
else {
    Write-Host "No new user accounts were created in the last 24 hours."
}
