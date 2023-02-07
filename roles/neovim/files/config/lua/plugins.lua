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
    -- display diagnostics in a list
    {
        "folke/trouble.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            vim.diagnostic.config({
                virtual_text = false,
                float = { border = "rounded" },
                use_diagnostic_signs = true,
            })

            local signs = { Error = "", Warn = "", Hint = "", Info = "" }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
            end

            require("utils").map("n", "<space>t", "<cmd>TroubleToggle<cr>")
        end,
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
