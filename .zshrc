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
ZSH_THEME="amuse"
# ZSH_THEME="arrow"
# ZSH_THEME="aussiegeek"
# ZSH_THEME="jonathan"
# ZSH_THEME="juanghurtado"
# ZSH_THEME="nanotech"
# ZSH_THEME="nicoulaj"
# ZSH_THEME="re5et"
# ZSH_THEME="terminalparty"
# ZSH_THEME="peepcode"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "peepcode" "terminalparty" "re5et" "nicoulaj" "nanotech" "juanghurtado" "jonathan" "aussiegeek" "arrow" "amuse")

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git 
    # zsh-autosuggestions 
    # zsh-syntax-highlighting 
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
    python 
    pip 
    ssh-agent 
    thefuck
)


# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B0"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs )
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_STATUS_VERBOSE=false
# # POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# # POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# DEFAULT_USER=$USER
# # POWERLEVEL9K_TIME_FORMAT="%D{%Y.%m.%d @ %H:%M:%S}"
# POWERLEVEL9K_TIME_FORMAT="\uf073 %D{%Y.%m.%d \uf017 %H:%M:%S}"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

zstyle :omz:plugins:ssh-agent agent-forwarding yes
# zstyle :omz:plugins:ssh-agent helper ksshaskpass
zstyle :omz:plugins:ssh-agent identities ~/.ssh/bitbucket

# zstyle :omz:plugins:ssh-agent lazy yes
# zstyle :omz:plugins:ssh-agent lifetime 4h
# zstyle :omz:plugins:ssh-agent quiet yes
# zstyle :omz:plugins:ssh-agent ssh-add-args -K -c -a /run/user/1000/ssh-auth


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/bitbucket"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="code ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/node@8/bin:$PATH"

# export JENV_SHELL=zsh
# export JENV_LOADED=1
# unset JAVA_HOME
# # #source '/usr/local/Cellar/jenv/0.5.4/libexec/libexec/../completions/jenv.zsh'
# jenv rehash 2>/dev/null
# jenv refresh-plugins
# jenv() {
#   typeset command
#   command="$1"
#   if [ "$#" -gt 0 ]; then
#     shift
#   fi

#   case "$command" in
#   enable-plugin|rehash|shell|shell-options)
#     eval `jenv "sh-$command" "$@"`;;
#   *)
#     command jenv "$command" "$@";;
#   esac
# }
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# export JENV_SHELL=zsh
# export JENV_LOADED=1
# unset JAVA_HOME
# # #source '/usr/local/Cellar/jenv/0.5.4/libexec/libexec/../completions/jenv.zsh'
# jenv rehash 2>/dev/null
# jenv refresh-plugins
