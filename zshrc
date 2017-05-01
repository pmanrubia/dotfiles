export ZSH=/Users/pmanrubia/.oh-my-zsh

ZSH_THEME="blinks"

CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git autojump brew bundler colored-man-pages colorize ruby tmux zsh-navigation-tools copydir copyfile systemadmin rand-quote marked2 jsontools git-extras extract dircycle)

source $ZSH/oh-my-zsh.sh

source ~/config/env
source ~/config/alias
source ~/config/paths
source ~/config/rbenv
