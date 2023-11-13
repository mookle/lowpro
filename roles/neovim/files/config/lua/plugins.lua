return {
    -- string/token wrapping
    {
        "tpope/vim-surround",
        dependencies = {
            "tpope/vim-repeat"
        },
    },
    -- colorschemes
    {
        {
            "mcchrish/zenbones.nvim",
            dependencies = {
                "rktjmp/lush.nvim",
            },
            config = function()
                --vim.g.neobones_darkness = 'warm'
                vim.g.neobones_lighten_noncurrent_window = true
                vim.g.rosebones_darkness = 'stark'
                vim.g.rosebones_lighten_noncurrent_window = true
                vim.g.zenwritten_darkness = 'warm'
                vim.g.zenwritten_lighten_noncurrent_window = true
            end,
        },
        {
            'EdenEast/nightfox.nvim',
            opts = {
                groups = {
                    all = {
                        -- Revert to Hop's default highlight colours
                        HopNextKey = { fg = "#ff007c" },
                        HopNextKey1 = { fg = "#00dfff" },
                        HopNextKey2 = { fg = "#2b8db3" },
                        HopUnmatched = { fg = "#666666" },
                    }
                }
            },
        },
        {
            "sainnhe/gruvbox-material",
            config = function()
                vim.o.background = "dark" -- dark|light
                vim.g.gruvbox_material_background = "medium" -- hard|medium|soft
                vim.g.gruvbox_material_foreground = "material" -- material|mix|original
                vim.g.gruvbox_material_better_performance = 1
                vim.g.gruvbox_material_enable_bold = 1
                vim.g.gruvbox_material_enable_italic = 1
            end,
        },
    },
    -- highlight trailing whitespace
    { 'ntpeters/vim-better-whitespace' },
    -- dynamic column limit display
    { 'Bekaboo/deadcolumn.nvim' },
    -- unified nvim/tmux buffer/pane navigation
    {
        'christoomey/vim-tmux-navigator',
        config = function()
            local map = require("utils").map
            map("n", "<c-n>", "<cmd>TmuxNavigateLeft<cr>")
            map("n", "<c-e>", "<cmd>TmuxNavigateDown<cr>")
            map("n", "<c-i>", "<cmd>TmuxNavigateUp<cr>")
            map("n", "<c-o>", "<cmd>TmuxNavigateRight<cr>")
        end ,
    },
}
