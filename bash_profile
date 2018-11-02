# We do everything in here because mac requires sourcing in your bashrc and thats lame
# Set CLICOLOR if you want Ansi Colors in iTerm2 export CLICOLOR=1
# FOR CANVAS
export ENABLE_CANVAS_WEBPACK_HOOKS=1
source ~/Desktop/canvas-lms/frontend_build/webpackHooks/macNotifications.sh

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

#FZF sourcing
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#For brew
export PATH=/usr/local/bin:$PATH #Docker stuff
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/sburnett/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

#Setting default git editor to vim
export GIT_EDITOR=vim
export EDITOR=vim

#churby sourcing
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
#aliases
alias dc=docker-compose
alias gpg="git push origin HEAD:refs/for/master"
alias startpostg="brew services start postgresql"
alias dcanvas="cd /Users/sburnett/Desktop/canvas-lms"
alias canvas="cd /Users/sburnett/canvas-lms"
alias magic="ctags -R ."
alias serverstart="bundle exec rails s"
alias turbo-docker="while true; do dinghy ssh echo 'turbo mode activated'; sleep 0.5; done"
alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  # This loads nvm

#git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
#run that and add vim base16 from there you will have nice syntax
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

#Found at https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWUPSTREAM=verbose
export PS1='\w$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)") $ '

#NVM fun
export NVM_DIR="$HOME/.nvm"

#Go Stuff
export PATH="$HOME/go/bin:$PATH"
chruby 2.4.0
