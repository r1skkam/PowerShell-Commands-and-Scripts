# PowerShell Commands and Scripts

25-Jan-2024-Thu

**"All intellectual property, including but not limited to ideas, code, and other content contained in this repository, is the property of its respective owners and is acknowledged and credited accordingly."**

## Retrieving the location of PowerShell's history file:

```
(Get-PSReadLineOption).HistorySavePath
```

C:\Users\username\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt

## Viewing the contents of PowerShell's history file:

```
Get-Content (Get-PSReadLineOption).HistorySavePath
```
