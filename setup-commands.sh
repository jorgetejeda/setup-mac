# Open Terminal and paste
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# After installation the in the terminal the where it says "Next Steps"
# Then run brew --version to see if everything goes well

#Check if you brew already installed zsh 
echo $SHELL
zsh --version 

#In case you don't have zsh as default terminal
#Make zsh default shell and reload terminal 
chsh -s /bin/zsh 

#Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#zsh Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#install Syntax Highlighting
brew install zsh-syntax-highlighting

npm i -g npkill
brew install --cask ngrok
#modified  code ~/.zshrc
brew install --cask alfred