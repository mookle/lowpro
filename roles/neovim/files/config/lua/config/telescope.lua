local map = require('utils').map

local telescope = require('telescope.builtin')

map('n', '<space>o', telescope.find_files, {})
map('n', '<space>/', telescope.live_grep, {})
map('n', '<space>h', telescope.oldfiles, {})
