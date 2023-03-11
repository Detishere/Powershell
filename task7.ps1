# Get the current date and time
$now = Get-Date

$NewUsers = Get-LocalUser | Where-Object { $_.Enabled -eq $true -and $_.CreateDate -ge $now.AddDays(-1) }

# Check if any new user accounts were found
if ($NewUsers) {
    # Create the output text file and write the list of new user accounts
    Out-File -FilePath "output.txt" -InputObject "The following new user accounts were created in the last 24 hours:`r`n"
    foreach ($user in $NewUsers) {
        Out-File -FilePath "output.txt" -Append -InputObject "$($user.Name) ($($user.SID)) created on $($user.CreateDate)`r`n"
    }

    # Display a message to indicate that the output text file was created
    Write-Host "New user accounts found. Output written to output.txt"
}
else {
    # Display a message if no new user accounts were found
    Write-Host "No new user accounts were created in the last 24 hours."
}
