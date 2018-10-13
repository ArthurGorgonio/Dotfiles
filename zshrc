# The original configuration https://github.com/araujobd/dotfiles/blob/master/zshrc
# arthurgorgonio@ufrn.edu.br, copy in: 2018 Sep 29

########################################
#        Zsh Configuration File        #
#     Maintainer: Arthur Gorgonio      #
#       Last Change: 2018 Oct 09       #
########################################

### COLORS CODE
# I choose these colors to customize the zsh. The colors are ordened by xterm code.
# The follow lines represent a list of the colors than I use
# Code color in xterm - the name of the color - the code in rgb
# 000 -   Black    - #000000
# 009 -    Red     - #FF0000
# 010 -   Green    - #00FF00
# 011 -   Yellow   - #FFFF00
# 013 -  Fuchsia   - #FF00FF
# 014 -    Aqua    - #00FFFF
# 022 - DarkGreen  - #005F00
# 202 - OrangeRed1 - #FF5F00
#
# The follow links were used to choose the colors and the icon in the configuration
# color: https://jonasjacek.github.io/colors/
# icons: http://bluejamesbond.github.io/CharacterMap/

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Change the color of the icon to blue when docker on
zsh_docker() {
  systemctl status docker > /dev/null
  if [[ $? -eq 0 ]] ;then
    local color='%F{006}'
  else
    local color='%F{010}'
  fi
  echo -en "%{$color%}\uF312"
}

# Using the spotify
zsh_spotify() {
  playerctl status > /dev/null 2> /dev/null
  if [[ $? -eq 1 ]] ;then
    echo -ne "\uF001"
  else
    local artist=$(playerctl metadata xesam:artist)
    local album=$(playerctl metadata xesam:album)
    local track=$(playerctl metadata xesam:title)

    echo -e "\uF9C6$track" # 阮music
    #echo -e "%{$color%} ♫ $track - $artist"
    #echo -e "%{$color%} ♫ $track - $artist $album"
  fi
}

# Random function
zsh_random() {
  rand=$((RANDOM%255))
}

# Docker Unicode \uF308 
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_docker battery custom_spotify time dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs ssh)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs ssh music)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time vi_mode background_jobs ssh dir_writable)

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0BC"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0BE"

# OS icon colors
# POWERLEVEL9K_OS_ICON_BACKGROUND=000
# POWERLEVEL9K_OS_ICON_FOREGROUND=010
#
# Custom manjaro icon when docker is alive
POWERLEVEL9K_CUSTOM_DOCKER="zsh_docker"
POWERLEVEL9K_CUSTOM_DOCKER_BACKGROUND=000
POWERLEVEL9K_CUSTOM_DOCKER_FOREGROUND=000

# Custom function to show the spotify music
POWERLEVEL9K_CUSTOM_SPOTIFY="zsh_spotify"
POWERLEVEL9K_CUSTOM_SPOTIFY_BACKGROUND=000
POWERLEVEL9K_CUSTOM_SPOTIFY_FOREGROUND=010

# Write the command in new line
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\uFB26 " # ﬦ LAMBDA
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

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
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=000
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=202
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=000
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=013
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=000
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=011
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=000
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=009
# The percentage of battery required to switch from disconnected to low (15%)
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=015
POWERLEVEL9K_BATTERY_VERBOSE=false

# Status colors
POWERLEVEL9K_STATUS_OK_BACKGROUND=000
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=000
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false

# Time format hour:minute - day[1-7] 1 - Monday
POWERLEVEL9K_TIME_ICON="\uE381" #  CLOCK
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_TIME_BACKGROUND=000
POWERLEVEL9K_TIME_FOREGROUND=140

# Background process colors
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=000
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=010

# The Vi mode in prompt
# POWERLEVEL9K_VI_INSERT_MODE_STRING="%BINSERT"
# POWERLEVEL9K_VI_COMMAND_MODE_STRING="%BNORMAL"
# POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND=000
# POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND=32
# POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND=000
# POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND=202

# VCS colors
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=000
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=010
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=000
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=009
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=000
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=011
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


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
