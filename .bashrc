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

export TERM=xterm-256color

alias vi='nvim'
alias vim='nvim'
alias sudo='sudo '
