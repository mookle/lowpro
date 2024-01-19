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
