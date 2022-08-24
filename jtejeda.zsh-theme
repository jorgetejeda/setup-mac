# Based on bira theme

setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

# Check the UID
if [[ $UID -ne 0 ]]; then # normal user
  PR_USER='%B%F{blue}%n%f%b'
  PR_USER_OP='%F{green}%#%f'
  PR_PROMPT='%f➤ %f'
else # root
  PR_USER='%F{red}%n%f'
  PR_USER_OP='%F{red}%#%f'
  PR_PROMPT='%F{red}➤ %f'
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{red}%M%f' # SSH
else
  PR_HOST='%F{green}%M%f' # no SSH
fi

local return_code="%(?..%F{red}%? ↵%f)"

# local nvm_node='%{$fg[green]%}‹node-$(nvm_prompt_info)›%{$reset_color%}'

# local user_host="${PR_USER}%F{cyan}@${PR_HOST}"
local user_host="${PR_USER}"
local custom_host=""
local current_dir="%B%F{red}%~%f%b"
local git_branch='$(git_prompt_info)'

# PROMPT="╭─${user_host} ${current_dir} \$(ruby_prompt_info) ${git_branch}
#         ╰─$PR_PROMPT "
# RPROMPT="${return_code}"

PROMPT="╭─ ${custom_host} in ${current_dir} on ${git_branch}
╰─$PR_PROMPT "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}["
ZSH_THEME_GIT_PROMPT_SUFFIX="] %f"


}


