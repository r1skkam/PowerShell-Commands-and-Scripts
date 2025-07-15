$directory = "C:\Users\kamkh\Documents\THM\PT1\keys-1627343109071\keys\"
$knownHash = "3166226048d6ad776370dc105d40d9f8"  # Replace with your known hash

# Get all files in directory and check each one
Get-ChildItem -Path $directory -File | ForEach-Object {
    $fileHash = (Get-FileHash -Algorithm MD5 -Path $_.FullName).Hash
    if ($fileHash -eq $knownHash) {
        Write-Host "Match found: $($_.Name)" -ForegroundColor Green
        # If you want full path instead of just filename, use $_.FullName
    }
}