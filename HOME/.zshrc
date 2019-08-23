export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=spaceship
SPACESHIP_VI_MODE_SHOW=false
ZSH_AUTOSUGGEST_USE_ASYNC=true

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias vi=vim
function gas() {
    git add $* && git status
}

# vim mode
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
export KEYTIMEOUT=10
function zle-line-init zle-keymap-select () {
    # changes cursor based on vim mode
    case ${KEYMAP} in
        (vicmd)      echo -ne "\e[1 q" ;;
        (main|viins) echo -ne "\e[5 q" ;;
        (*)          echo -ne "\e[6 q" ;;
    esac
}
zle -N zle-line-init
zle -N zle-keymap-select

stty -ixon  # ignore ^c, ^q

. "$HOME/anaconda3/etc/profile.d/conda.sh"  # conda init
