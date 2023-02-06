return {
    "habamax/vim-godot",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        require("lspconfig").gdscript.setup {
            cmd = { "nc", "localhost", "6005" },
            capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end,
}
