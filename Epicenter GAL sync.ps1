Param([string]$userIdentity)

$UserCredential = Get-Credential

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication  Basic -AllowRedirection

Import-PSSession $Session

Add-MailboxPermission -AccessRights "FullAccess" -Identity $userIdentity -user epicenter@keystonecare.com -AutoMapping $false

Remove-PSSession $Session