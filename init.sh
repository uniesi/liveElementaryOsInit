NOME="UNIESI"
EMAIL="itapira.cpd@unip.br"

echo "INFORME SEU NOME E EMAIL PARA CONFIGURAR O GIT: "
read -p "NOME: " NOME
read -p "E-MAIL: " EMAIL

echo "NOME: $NOME"
echo "E-MAIL: $EMAIL"

sudo apt-get update
sudo apt-get install -y nodejs yarn gdebi
wget -O /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n /tmp/chrome.deb
wget -O /tmp/code.deb 
sudo gdebi -n /tmp/chrome.deb

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code

git config --global user.email "$EMAIL"
git config --global user.name "$NOME"
