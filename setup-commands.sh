xcode-select -p
xcode-select --install
xcode-select -p
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git
brew install node
npm i -g npkill
brew install mysql
brew install --cask visual-studio-code
brew install --cask ngrok
brew install --cask iterm2
brew install zsh
#Check the version of zsh 
zsh --version 
#Make zsh default shell and reload terminal 
echo $SHELL
chsh -s /bin/zsh 
#Check the shell you're using: 
echo $SHELL
#Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#zsh Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#install Syntax Highlighting
brew install zsh-syntax-highlighting
brew install nvm
nvm install stable
#modified  code ~/.zshrc
brew install --cask spectacle
brew install --cask alfred