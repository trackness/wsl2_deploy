# Correct starting directory in Windows Terminal settings
#	- add "startingDirectory": "//wsl$/Ubuntu/home/james/"

# Remove need for sudo password
sudo echo "james ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/james > /dev/null

# Modernise distribution
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove

sudo apt install git-all curl wget -y
sudo apt install zsh -y
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# VS Code Server
code > /dev/null

dev tools
	brew install pyenv go 

# git credentials
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager.exe"