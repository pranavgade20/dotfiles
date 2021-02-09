#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# setting the prompt
PS1='[\u@\h \W]\$ '

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length to infinite
HISTSIZE=
HISTFILESIZE=

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#auto cd when just path is entered
shopt -s autocd

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# color grep
alias grep='grep --color=auto'

# color cat
alias ccat='source-highlight --out-format=esc256 -o STDOUT -i'

# some aliases
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -h -alF'
alias la='ls -A'
alias l='ls -CF'

alias ltspice="wine ~/.wine/drive_c/Program\ Files/LTC/LTspiceXVII/XVIIx64.exe"

alias cdj='cd ~/Desktop/Programs/Java'
alias cd..='cd ..'
alias cd.='cd ..'

alias mkd='mkdir -pv'
# adding my git ssh keys
eval "$(ssh-agent -s)" > /dev/null
ssh-add ~/.ssh/git_id_rsa > /dev/null

