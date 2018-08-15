Test-WSMan 10.2.1.5
Enable-PSRemoting -force
Enable-PSRemoting -SkipNetworkProfileCheck -Force 
winrm set winrm/config/client @{TrustedHosts="10.1.99.49"}

Enter-PSSession -ComputerName 10.2.1.5 -Credential buddykolp
Start-ADSyncsynccycle -PolicyType Delta 