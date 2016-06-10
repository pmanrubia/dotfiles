export ZSH=/Users/pmanrubia/.oh-my-zsh

ZSH_THEME="blinks"

CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git autojump brew bundler colored-man-pages colorize rake rbenv ruby tmux zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh

source ~/.custom/env
source ~/.custom/alias
source ~/.custom/paths
source ~/.custom/rbenv
