return {
    "stevearc/oil.nvim",
    opts = {
        keymaps = {
            ["<C-v>"] = "actions.select_vsplit",
            ["<C-x>"] = "actions.select_split",
        },
        view_options = {
            show_hidden = true,
        },
    },
    config = function(args)
        require("oil").setup(args.opts)
        require('utils').map('n', '<space>.', ':Oil<CR>')
    end,
}
