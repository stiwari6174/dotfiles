
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
# (for homebrew) take executables from local bin before checking anywhere else
export PATH="usr/local/bin:${PATH}"

set -o vi

alias ls='ls -GFh'
alias python="python3"
alias pip="pip3"
alias vim="nvim"
