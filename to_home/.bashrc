#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias vi="nvim"
alias vim="nvim"
alias sudo="doas"
alias sudoedit="doas rnano"



PS1='[\u@\h \W]\$ '
