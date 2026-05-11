# GLQS - Nu Setup 

# 1. Scoop install
print "Instaling Scoop"
if (which scoop | is-empty) {
    print "Instalowanie Scoop..."
    powershell -c "irm get.scoop.sh | iex"
}

# 2. installing apps
print "Installing apps"
scoop install glazewm yasb 

# 3. Config
print "Copying config files"
mkdir ~/glm
mkdir ~/.glzr
mkdir ~/.config/yasb

cp -rf glm/* ~/glm/
cp -rf glzr/* ~/.glzr/
cp -rf yasb/* ~/.config/yasb/

print "--- glqs install done ---"

