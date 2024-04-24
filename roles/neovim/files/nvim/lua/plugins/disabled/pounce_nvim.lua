return {
    "rlane/pounce.nvim",
    config = function()
        local map = require("utils").map
        map("n", "?", "<cmd>Pounce<cr>")
        map("v", "?", "<cmd>Pounce<cr>")
    end,
}

