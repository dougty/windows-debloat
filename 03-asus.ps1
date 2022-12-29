Write-Host "`r`n"
Write-Host "Disabling services..."


Stop-Service "AsusAppService"
Set-Service "AsusAppService" -StartupType Disabled

Stop-Service "ASUSLinkNear"
Set-Service "ASUSLinkNear" -StartupType Disabled

Stop-Service "ASUSLinkRemote"
Set-Service "ASUSLinkRemote" -StartupType Disabled

Stop-Service "ASUSOptimization"
Set-Service "ASUSOptimization" -StartupType Disabled

Stop-Service "ASUSSoftwareManager"
Set-Service "ASUSSoftwareManager" -StartupType Disabled

Stop-Service "ASUSSwitch"
Set-Service "ASUSSwitch" -StartupType Disabled

Stop-Service "ASUSSystemAnalysis"
Set-Service "ASUSSystemAnalysis" -StartupType Disabled

Stop-Service "ASUSSystemDiagnosis"
Set-Service "ASUSSystemDiagnosis" -StartupType Disabled


Stop-Service "DolbyDAXAPI"
Set-Service "DolbyDAXAPI" -StartupType Disabled

Stop-Service "FMAPOService"
Set-Service "FMAPOService" -StartupType Disabled

Stop-Service "RtkAudioUniversalService"
Set-Service "RtkAudioUniversalService" -StartupType Disabled

Stop-Service "PIEServiceNew"
Set-Service "PIEServiceNew" -StartupType Disabled

Stop-Service "AMD Crash Defender Service"
Set-Service "AMD Crash Defender Service" -StartupType Disabled



Write-Host "`r`n"
Write-Host "Disabling tasks..."


Get-ScheduledTask AMDInstallLauncher | Disable-ScheduledTask
Get-ScheduledTask ModifyLinkUpdate | Disable-ScheduledTask
Get-ScheduledTask StartCN | Disable-ScheduledTask

Get-ScheduledTask "ASUS Optimization 36D18D69AFC3" | Disable-ScheduledTask
Get-ScheduledTask "AsusSystemAnalysis_754F3273-0563-4F20-B12F-826510B07474" | Disable-ScheduledTask
Get-ScheduledTask "ASUS Update Checker 2.0" | Disable-ScheduledTask
Get-ScheduledTask RtkAudUService64_BG | Disable-ScheduledTask



Write-Host "`r`n"
Write-Host "Disabling devices..."


Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "ASUS System Control Interface v3").InstanceID -Confirm:$false

Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "DolbyAPO Software Device (HSA)").InstanceID -Confirm:$false
Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "DolbyAPO SWC Device").InstanceID -Confirm:$false

Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Fortemedia APO Control Service").InstanceID -Confirm:$false
Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Fortemedia Audio Effects Component").InstanceID -Confirm:$false
Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Fortemedia SAMSoft Effects Component").InstanceID -Confirm:$false

Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Intel* PROSet/Wireless WiFi Software extension").InstanceID -Confirm:$false

Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Realtek Asio Component").InstanceID -Confirm:$false
Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Realtek Audio Effects Component").InstanceID -Confirm:$false
Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Realtek Audio Universal Service").InstanceID -Confirm:$false
Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "Realtek Hardware Support Application").InstanceID -Confirm:$false

Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "AMD Crash Defender").InstanceID -Confirm:$false


Write-Host "`r`n"
Write-Host "Done!"
