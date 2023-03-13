return {
    -- string/token wrapping
    {
        "tpope/vim-surround",
        dependencies = {
            "tpope/vim-repeat"
        },
    },
    -- LSP client
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- visual LSP loading/progress
            {
                "j-hui/fidget.nvim",
                config = true,
            }
        },
    },
    -- colorschemes
    {
        "atelierbram/Base2Tone-nvim",
        "no-clown-fiesta/no-clown-fiesta.nvim",
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
}
