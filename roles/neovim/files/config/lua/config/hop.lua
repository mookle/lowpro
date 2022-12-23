local map = require('utils').map
local hop = require('hop')

hop.setup {
    keys = 'ntesiroamghdcxzlpufywq',
}

map('n', 'hh', hop.hint_words)
map('n', 'hl', hop.hint_lines_skip_whitespace)
map('n', 'hc', hop.hint_char1)
map('n', 'hC', hop.hint_char2)
map('n', 'h/', hop.hint_patterns)
