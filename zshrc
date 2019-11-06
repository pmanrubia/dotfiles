export ZSH="/Users/pablomanrubia/.oh-my-zsh"

ZSH_THEME="blinks"

CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  autojump
  brew
  bundler
  colored-man-pages
  colorize
  ruby
  tmux
  zsh-navigation-tools
  copydir
  copyfile
  rand-quote
  marked2
  jsontools
  git-extras
  extract
  dircycle
)

source $ZSH/oh-my-zsh.sh

source ~/.config/env
source ~/.config/alias
source ~/.config/rbenv
source ~/.config/customf

export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
