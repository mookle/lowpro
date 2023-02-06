return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local map = require("utils").map
        local builtin = require("telescope.builtin")
        map("n", "<space>o", builtin.find_files, {})
        map("n", "<space>/", builtin.live_grep, {})
        map("n", "<space>h", builtin.oldfiles, {})
    end,
}
