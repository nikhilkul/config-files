export ZSH=/Users/z00335s/.oh-my-zsh
ZSH_THEME="bira"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

alias mp3dl="cd /Users/z00335s/Google\ Drive/Music/ && youtube-dl --extract-audio --audio-format mp3"
alias jupyn="jupyter notebook >/dev/null 2>&1 &"
alias ds="docker ps -a"
alias di="docker images"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
export PYTHONPATH=:.
