local map = require('utils').map

local telescope = require('telescope.builtin')

map('n', 'fo', telescope.find_files, {})
map('n', 'f/', telescope.live_grep, {})
