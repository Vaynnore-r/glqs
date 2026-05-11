# Ścieżki do Twoich plików
$file1 = "$HOME\glm\config.yaml"
$file2 = "$HOME\.glzr\glazewm\config.yaml"
$temp = "$HOME\glm\temp\config.yaml.tmp"

# Logika zamiany
# Dodajemy -Force, aby móc nadpisać plik docelowy
Move-Item -Path $file1 -Destination $temp -Force
Move-Item -Path $file2 -Destination $file1 -Force
Move-Item -Path $temp -Destination $file2 -Force
$wshell = New-Object -ComObject WScript.Shell
& "$HOME\glm\yasb-f.ps1"
& "$HOME\glm\yasb-c.ps1"
$wshell.SendKeys('%+R')
Write-Host "Switched mode" -ForegroundColor White

