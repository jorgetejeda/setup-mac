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

# git
alias gi='git init'
alias gb='git branch'
alias giy='git init -y'
alias gaa='git add .'
alias gss='git status -s'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gp='git pull'
alias gpsh='git push'

# Files
alias o='open .'
alias ophp='open /Applications/MAMP/htdocs'



# in terminal run source ~/.zshrc

# in iterm
# Preference > Profile > Session
# check Configure bar status
# add 'interpolated string' 
    # for user:
    # 📍: \(user.pwd)
    # for node:
    # Node: \(user.nodeVersion)