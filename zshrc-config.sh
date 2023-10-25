# look for plugins ctrl+f and replace with
plugins=(
  git zsh-autosuggestions
)

# add this under plugin
source $ZSH/oh-my-zsh.sh

# Add in the bottom file
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Change the username@hostname
# DEFAULT_USER = `whoami`
DEFAULT_USER = <username>

# To add variable as title on terminal
iterm2_print_user_vars() {
  # extend this to add whatever
  # you want to have printed out in the status bar
  iterm2_set_user_var nodeVersion $(node -v)
  iterm2_set_user_var pwd $(pwd)
}

# To idetified nvm alias
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# ------
# Alias
# ------
function show_git_aliases() {
  echo "Alias de Git en .zshrc:"
  echo "------------------------"
  grep -E "^alias g" ~/.zshrc | grep -vE "git=|git |git$" | sed "s/alias //" | sort
}

# git
alias gi='git init'
alias gb='git branch'
alias gbd='git branch -D'
alias giy='git init -y'
alias gaa='git add .'
alias gss='git status -s'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gp='git pull'
alias gpsh='git push origin head'

# Files
alias o='open .'
alias ophp='open /Applications/MAMP/htdocs'
alias desktop='cd ~/Desktop'
alias themes='cd ~/.oh-my-zsh/themes'
# It will create a file using the name of directory you are in
# EX: cd ~/myFile && createfile html
# Res: myFile.html
alias createfile='f() { touch "${PWD##*/}.$1" };f'

# show - hide files
alias showFiles='defaults write com.apple.Finder AppleShowAllFiles true && killall Finder'
alias hideFiles='defaults write com.apple.Finder AppleShowAllFiles false && killall Finder'
alias hideDesktop='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias showDesktop='defaults write com.apple.finder CreateDesktop true; killall Finder'

# Npm
alias start='npm start'

#React native
alias reactNative='create-react-native-app'

alias configHost='code /etc/hosts'
# SSH
alias ssh='cd ~/.ssh/'

# OPEN JAVA VERSION FILES
alias javaVersions='cd /Library/Java/JavaVirtualMachines'

# killpid <pid>
kill_pid(){
  "kill -9 $(lsof -i:${1})"
}

# in terminal run source ~/.zshrc

# in iterm
# Preference > Profile > Session
# check Configure bar status
# add 'interpolated string' 
    # for user:
    # 📍: \(user.pwd)
    # for node:
    # Node: \(user.nodeVersion)
