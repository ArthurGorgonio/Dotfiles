# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

prompt_music(){
  local track=$(($(playerctl status)))
  if ((track)); then
    echo -e "♫"
  else
    local color='%F{green}'
    local artist=$(playerctl metadata xesam:artist)
    local album=$(playerctl metadata xesam:album)
    local track=$(playerctl metadata xesam:title)

    echo -e "%{$color%} ♫ $track"
    #echo -e "%{$color%} ♫ $track - $artist"
    #echo -e "%{$color%} ♫ $track - $artist $album"
  fi
}

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon battery time ip dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs ssh)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs ssh music)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time vi_mode background_jobs ssh dir_writable)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\uFB26 " # ﬦ LAMBDA
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

# OS icon colors
POWERLEVEL9K_OS_ICON_BACKGROUND=000
POWERLEVEL9K_OS_ICON_FOREGROUND=010

# Ip icon colors
POWERLEVEL9K_IP_BACKGROUND=000
POWERLEVEL9K_IP_FOREGROUND=011

# Color Scheme
POWERLEVEL9K_COLOR_SCHEME='light'

# Dir configurations
POWERLEVEL9K_DIR_HOME_BACKGROUND=000
POWERLEVEL9K_DIR_HOME_FOREGROUND=014
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=000
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=014
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=000
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=014
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders
POWERLEVEL9K_SHORTEN_DELIMITER="···"

# Battery colors
POWERLEVEL9K_BATTERY_ICON="\uE23A" #  REAL-HEART
POWERLEVEL9K_BATTERY_CHARGING=107
POWERLEVEL9K_BATTERY_CHARGED=010
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=050
POWERLEVEL9K_BATTERY_LOW_COLOR=009
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=000
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=202
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=000
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=013
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=009
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=226
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=000
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=093

# Status colors
POWERLEVEL9K_STATUS_OK_BACKGROUND=000
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=000
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false

# Time format hour:minute - day[1-7] 1 - Monday
#POWERLEVEL9K_TIME_ICON="\uE381" #  CLOCK
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_TIME_FOREGROUND=010

# Background process colors
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=000
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=010

# POWERLEVEL9K_VI_INSERT_MODE_STRING="%BINSERT"
# POWERLEVEL9K_VI_COMMAND_MODE_STRING="%BNORMAL"
# POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND=000
# POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND=32
# POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND=000
# POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND=202

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-docker-aliases
  zsh-syntax-highlighting
)

# plugins=(
#   git
#   vi-mode
# )
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi

