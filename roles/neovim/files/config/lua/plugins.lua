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
    -- highlight todo comments
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = true,
    },
    -- colorschemes
    { "srcery-colors/srcery-vim" },
    {
        'Shatur/neovim-ayu',
	config = function()
            require("ayu").setup({ mirage = true })
	end,
    },
    {
        "sainnhe/gruvbox-material",
        config = function()
            vim.o.background = "dark"
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
        config = function(args)
            vim.cmd([[ colorscheme terafox ]])
            require("nightfox").setup(args.opts)
        end,
    },
    -- highlight trailing whitespace
    { 'ntpeters/vim-better-whitespace' },
}
