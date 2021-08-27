#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="[\033[00;31m\]\u@\h\[\033[00m\] \033[00;34m\]\W\[\033[00m\]]\[\033[00;32m\]\$(git_branch)\[\033[00m\]\$ "

export TERM=xterm-88color

export GOROOT=/usr/local/go
export GOPATH=/usr/local/go/packages
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
