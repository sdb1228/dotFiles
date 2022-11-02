#FZF sourcing
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(/opt/homebrew/bin/brew shellenv)"
export BASH_SILENCE_DEPRECATION_WARNING=1
export GIT_EDITOR=vim
export EDITOR=vim
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWUPSTREAM=verbose
export PS1='\w$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)") $ '
export BASH_SILENCE_DEPRECATION_WARNING=1
export FZF_DEFAULT_COMMAND="rg --files"
export PATH=~/Library/Android/sdk/tools:$PATH
export PATH=~/Library/Android/sdk/platform-tools:$PATH
export GOPRIVATE=bitbucket.org/tendosystems/*,bitbucket.org/sburnett/*
export GOPATH=/Users/stevenburnett/go
export GOBIN=$GOPATH/bin
PATH=$PATH:$GOBIN
# ITERM PREFERENCES https://gist.githubusercontent.com/sdb1228/0801f79062acf581085b84605a8637f0/raw/39f0bba5675bf6028339aa4732b5db79acc68c49/itermprefferences
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
