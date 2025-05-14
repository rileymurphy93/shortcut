#Set Shortcut Path and Name
$ShortcutPath = "$env:Public\Desktop\Keeper.lnk"

#Set app to Open Shortcut With (Edge)
$TargetPath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

#Set Shortcut URL
$Arguments = "--new-window https://keepersecurity.com/vault/"

$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $TargetPath
$Shortcut.Arguments = $Arguments
$Shortcut.IconLocation = "$TargetPath, 0"
$Shortcut.Save()
