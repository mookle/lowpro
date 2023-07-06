return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- visual LSP loading/progress
        {
            "j-hui/fidget.nvim",
            tag = "legacy",
            config = true,
        },
        -- LSP breadcrumbs / jump points
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
            },
            opts = {
                lsp = { auto_attach = true }
            },
            config = function(args)
                local map = require("utils").map
                local navbuddy = require("nvim-navbuddy")

                navbuddy.setup(args.opts)
                map("n", "<space>n", "<cmd>Navbuddy<cr>", {})
            end,
        },
    },
}
