# Sync history across sessions
function save_history --on-event fish_preexec
  history --save
end
alias hr 'history --merge' # read and merge history from disk
bind \e\[A 'history --merge ; up-or-search'

# TODO parameterise this block
# Default edit
set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim

alias ll='ls -lAhv'
# BEGIN ANSIBLE MANAGED BLOCK: asdf config
source ~/.asdf/asdf.fish
# END ANSIBLE MANAGED BLOCK: asdf config
set -g theme_nerd_fonts yes

# nvim w/Godotengine listener socket
function gamedev -a path
  cd $path
  nvim --listen ./godothost .
end

alias bb="gamedev ~/src/botb/godot"

# git alias for managing the dotfile repo.
# See https://gitlab.com/mookle/dotfiles for more info
alias dot="git --work-tree=$HOME"

# zoxide - "cd" usage indexer/fuzzy finder
zoxide init fish | source
alias cd=z
