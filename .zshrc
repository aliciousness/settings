#### These need to be cloned for all features to be enabled, there are the links as well as the link to the cheat sheet for oh-my-zsh
################# AUTO SUGGESTION https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
################# POWERLEVEL10K - https://github.com/romkatv/powerlevel10k#getting-started#
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
################# SYNTAC-highlighting https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
################# https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet CHEATSHEET
###########################################################################################################################################


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# POWERLEVEL9K_MODE='nerdfont-complete'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


# ZSH_THEME="robbyrussell"
# ZSH_THEME="amuse"
# ZSH_THEME="arrow"
# ZSH_THEME="aussiegeek"
# ZSH_THEME="jonathan"
# ZSH_THEME="juanghurtado"
# ZSH_THEME="nanotech"
# ZSH_THEME="nicoulaj"
# ZSH_THEME="re5et"
# ZSH_THEME="terminalparty"
# ZSH_THEME="peepcode"
# ZSH_THEME="powerlevel10k/powerlevel10k"



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.

ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=("robbyrussell" "amuse" "arrow" "aussiegeek" "jonathan" "juanghurtado" "nanotech" "nicoulaj" "re5et" "terminalparty" "peepcode" "powerlevel10k/powerlevel10k")

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    aws
    terraform
    python
    pip
    docker
    docker-compose
    colored-man-pages
    ansible
    aliases
    copypath
    history
    ssh-agent
)


# zstyle :omz:plugins:ssh-agent agent-forwarding yes
# zstyle :omz:plugins:ssh-agent helper ksshaskpass

# IMPORTANT this is only used on LOCALHOST for github
zstyle :omz:plugins:ssh-agent identities <placeholder>

# zstyle :omz:plugins:ssh-agent lazy yes
# zstyle :omz:plugins:ssh-agent lifetime 4h
# zstyle :omz:plugins:ssh-agent quiet yes
# zstyle :omz:plugins:ssh-agent ssh-add-args -K -c -a /run/user/1000/ssh-auth

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
export SSH_KEY_PATH="<placeholder>"

# fzf
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
############ aliases
alias cat='bat -n -A'
alias fls='ls $(fzf --preview "bat --color=always --style=numbers --line-range=:500 {}")'
alias ghcpe="gh copilot explain"
alias ghcps="gh copilot suggest"

# GH workflow alias can get more information from here https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-workflow-runs/manually-running-a-workflow
alias workflow="gh workflow run" # To run a GitHub workflow in the cli ie. workflow WORKFLOW.yml --ref BRANCH 
alias ghwatch="gh run watch" # watch a workflow 

alias prmaster="gh pr create --base master --head"
alias prmain="gh pr create --base main --head"
alias pr="gh pr"
alias send="wormhole send"
alias reload="omz reload"
alias vi="vim +'set ic'"    # set non strict casing for search with vim
alias awslogin="aws sso login --sso-session=my-sso"
alias tfdocs="terraform-docs" # short hand for terraform-docs
alias copy="it2copy" # iterm2 shortcut to copy to pasteboard pass in the file name
alias commit="git commit -am"
alias push="gpsup" # git push origin whatever branch you are on 
alias undo='git reset --soft HEAD~1'    # Undo the last commit
alias reset='git reset --hard' # reset back to the commit hash you choose
alias pop='git stash pop' # pop the latest stash of files
alias stash='git stash' # stash changed files
alias hist='git log --graph --oneline --all' # git colorful history tree
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add Visual Studio Code (code)
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Nodejs for Ma
# For compilers to find node@20 you may need to set:
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@20/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@20/include"

# activate python virtual environment
## Inhouse Python tools
source $HOME/code/tools/venv/bin/activate
export PATH=$HOME/code/tools/bin:$PATH

# JS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# To disable the creation of ._ files when using tar on macOS
export COPYFILE_DISABLE=1

# Iterm for mac
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


