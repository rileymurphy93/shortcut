# Configurable values
$ShortcutName = "Keeper"
$WebsiteURL = "https://keepersecurity.com/vault/"
$IconUrl = "https://raw.githubusercontent.com/rileymurphy93/shortcut/refs/heads/main/keeper.17.1.1.ico"
$IconFolder = "C:\ProgramData\CompanyIcons"
$IconPath = "$IconFolder\companylogo.ico"
$ShortcutPath = "$env:Public\Desktop\$ShortcutName.lnk"
$BrowserPath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

# Create icon folder if it doesn't exist
if (-not (Test-Path $IconFolder)) {
    New-Item -ItemType Directory -Path $IconFolder -Force
}

# Download the .ico file
Invoke-WebRequest -Uri $IconUrl -OutFile $IconPath -UseBasicParsing

# Create shortcut
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $BrowserPath
$Shortcut.Arguments = "--new-window $WebsiteURL"
$Shortcut.IconLocation = $IconPath
$Shortcut.Save()