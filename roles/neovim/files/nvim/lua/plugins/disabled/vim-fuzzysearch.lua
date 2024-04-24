return {
    'ggvgc/vim-fuzzysearch',
    config = function()
        local map = require("utils").map
        map("n", "/", "<cmd>FuzzySearch<cr>", {})
    end,
}
