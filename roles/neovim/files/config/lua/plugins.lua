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
        "Rigellute/rigel",
        "sainnhe/gruvbox-material",
        "srcery-colors/srcery-vim",
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
            "rose-pine/neovim",
            name = "rose-pine",
            config = function()
                require("rose-pine").setup({
                    disable_italics = true,
                })
            end,
        },
        {
            'Shatur/neovim-ayu',
            config = function()
                require("ayu").setup({ mirage = true })
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
