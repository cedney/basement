Get-PSSessionConfiguration
New-PSSessionConfigurationFile -Path "$(env:ProgramData)\JEAConfiguration\TESTDemo.pssc" -Full
psedit "$(env:ProgramData)\JEAConfiguration\TESTDemo.pssc"
SessionType - 'RestrictedRemoteServer'
TranscriptDirectory - 'C:\ProgramData\JEAConfiguration\Transcripts'
RunAsVirtualAccount - $true
