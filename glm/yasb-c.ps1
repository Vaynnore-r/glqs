# Ścieżki do Twoich plików
$file1 = "$HOME/glm/yasb/styles.css"
$file2 = "$HOME/.config/yasb/styles.css"
$temp = "$HOME/glm/yasb/styles.css.tmp"

# Logika zamiany
# Dodajemy -Force, aby móc nadpisać plik docelowy
Move-Item -Path $file1 -Destination $temp -Force
Move-Item -Path $file2 -Destination $file1 -Force
Move-Item -Path $temp -Destination $file2 -Force
$wshell = New-Object -ComObject WScript.Shell

