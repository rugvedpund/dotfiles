#!/usr/bin/bash

# set -o vi
# PS1='${debian_chroot:+($debian_chroot)} \[\033[01;32m\]\u@\h\[\033[00m\] [$(date "+%a %H:%M")]: \[\033[01;34m\]\w\[\033[00m\] \n \$ '
# PS1='${debian_chroot:+($debian_chroot)}\[\e[02;37m\][$(date "+%a %H:%M")]\[\e[00m\] \[\033[00;32m\]\w\[\033[00m\] \n \$ '
PS1='${debian_chroot:+($debian_chroot)}\[\e[02;37m\]\[\e[00m\] \[\033[00;32m\]\w\[\033[00m\] \n \$ '
PROMPT_DIRTRIM=1
eval "$(fzf --bash)"
export VISUAL="nvim"
export EDITOR="nvim"
export PATH=/usr/local/cuda-12.6/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

alias du="du -h"
alias df="df -h"
alias c="clear"

export cfg=~/.config/
export LUSEE_DRIVE_DIR=~/files/lusee_drive/
export LUSEE_DATA_DIR=/home/rugved/files/projects/darkages-lusee/data/
export LUSEE_OUTPUT_DIR=/home/rugved/files/projects/darkages-lusee/data/outputs/

alias nv="nvim"
alias v="NVIM_APPNAME=nvim_quarto nvim"
alias py="python"
alias ipy="ipython --ext=autoreload -c '%autoreload 2 --print' -i --no-banner"
alias jt="jupytext"
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias zen="PS1=' $' bash"
alias sob='echo "source ~/.bashrc" ; source ~/.bashrc'
alias coa='conda activate'
alias cod='conda deactivate'
alias gst='git status'
alias gg='lazygit'

# alias cht='curl cht.sh/ $1 | nvim -'


# echo "reloaded bashrc, aliases..."
# eval "$(uv generate-shell-completion bash)"
~/files/projects/themes/theme.sh gruvbox-material-dark-hard
