# History file
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory histignoredups histignorespace

# Automatically change directories using just dir name
setopt autocd

# No beeps
unsetopt beep

# Vi keymap
bindkey -v

# Autocomplete
autoload -Uz compinit
compinit

# Default editor
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# Handy aliases
[ -f ~/.zsh_aliases ] && . ~/.zsh_aliases

# Better color support in Tmux
export TERM=tmux-256color
export CLICOLOR=1

# Better prompt
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'
PROMPT='%n@%m:%{$PR_BOLD_RED%}${${(%):-%~}//\//${PR_BOLD_RED}/%f}%f '

# Raspbian SDK / Haskell cross-compilation
export PATH=~/src/raspbian-sdk/prebuilt/bin:$PATH
