# Script to rename Roblox folder in AppData 
# $fileAppendFormat = "C:\Users\Dxxx\AppData\Local\Roblox" + " " + (Get-Date -Format "yyyy-MM-dd")
# Rename-Item -Path C:\Users\Dxxx\AppData\Local\Roblox -NewName $fileAppendFormat
#$pathname = C:\Users\Dxxx\AppData\Local\
#$RandomNumber = Get-Random -Maximum 50
#$fileAppendFormat = C:\Users\Dxxx\AppData\Local\Roblox + "OLDX" + (Get-Date -Format "yyyyMMdd") + " " + $RandomNumber

#▀█▀ █▀▀ █▀ ▀█▀ █ █▄░█ █▀▀
 #█░ ██▄ ▄█ ░█░ █ █░▀█ █▄█

$pathname = "C:\Users\Administrator\Desktop"
$fileAppendFormat = "C:\Users\Administrator\Desktop\testbatch"  + "OLDXYZ" + (Get-Date -Format "yyyyMMdd") + " " + $RandomNumber
$RandomNumber = Get-Random -Maximum 50

# Appends the new file format and random number to the folder name. WORKS
Rename-Item -Path C:\Users\Administrator\Desktop\testbatch -NewName $fileAppendFormat

# Pause 2 secs
Start-Sleep -Seconds 2

# Looks for and removes any folder with "OLDX2022" in the name. WORKS
Get-ChildItem -Path $pathname -Recurse | where-object {$_.Name -ilike "*OLDXYZ*"} | Remove-Item -Force -Recurse
