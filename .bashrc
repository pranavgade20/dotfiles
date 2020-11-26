#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some ls aliases
alias ls='ls --color=auto'
alias ll='ls -h -alF'
alias la='ls -A'
alias l='ls -CF'

# because awt is annoying and i cant be bothered to set up a .xinitrc
alias IDEA='export _JAVA_AWT_WM_NONREPARENTING=1 && idea'
alias PYCHARM='export _JAVA_AWT_WM_NONREPARENTING=1 && pycharm'
alias studio='export _JAVA_AWT_WM_NONREPARENTING=1 && ~/android-studio/bin/studio.sh'

alias cdj='cd ~/Desktop/Programs/Java'
alias cd..='cd ..'
alias cd.='cd ..'

# adding my git ssh keys
eval "$(ssh-agent -s)" > /dev/null
ssh-add ~/.ssh/git_id_rsa > /dev/null

