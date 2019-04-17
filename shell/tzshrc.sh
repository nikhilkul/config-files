# ZSH 
export ZSH=/Users/z00335s/.oh-my-zsh
ZSH_THEME="bira"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='subl'
else
  export EDITOR='subl'
fi

# Download MP3 files from Youtube Videos
alias mp3dl="cd /Users/z00335s/Google\ Drive/Music/ &&\
 youtube-dl --extract-audio --audio-format mp3 --youtube-skip-dash-manifest --audio-quality 0 --embed-thumbnail \
 --add-metadata --metadata-from-title '%(title)s | %(artist)s' --continue --ignore-errors"

# Jupyter Notebook
alias jupyn="jupyter notebook >/dev/null 2>&1 &"

# Python virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Docker Aliases
alias ds="docker ps -a"
alias di="docker images"

# Kubernetes Aliases
alias kgp="kubectl get pods" 
alias kl="kubectl logs -f"
