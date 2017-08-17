# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Append (rather than overwrite) commands to the HISTFILE
shopt -s histappend

# Reduce noise/repetition
HISTCONTROL=ignoreups:ignorespace

# Number of commands transferred to HISTFILE when the shell exits
HISTSIZE=1000

# Number of lines permitted in HISTFILE
HISTFILESIZE=2000

# Check the window size after each command; update the values of LINES and
# COLUMNS, if necessary
shopt -s checkwinsize

# Handy aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Ensure a default EDITOR is defined
export EDITOR="vim"

# Better prompt
PS1="\u@\H:\w\[\e[32;40m\]\$(__git_ps1)\[\e[0m\]\$ "

# Better color support
export TERM=tmux-256color
export CLICOLOR=1
