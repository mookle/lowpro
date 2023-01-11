require("oil").setup({
    keymaps = {
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-x>"] = "actions.select_split",
    },
    view_options = {
        show_hidden = true,
    },
})

require('utils').map('n', 'f.', ':Oil .<CR>')
