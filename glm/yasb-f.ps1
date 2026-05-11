# Ścieżki do Twoich plików
$file1 = "$HOME/glm/yasb/config.yaml"
$file2 = "$HOME/.config/yasb/config.yaml"
$temp = "$HOME/glm/yasb/config.yaml.tmp"

# Logika zamiany
# Dodajemy -Force, aby móc nadpisać plik docelowy
Move-Item -Path $file1 -Destination $temp -Force
Move-Item -Path $file2 -Destination $file1 -Force
Move-Item -Path $temp -Destination $file2 -Force
$wshell = New-Object -ComObject WScript.Shell
