--
-- A lot of this config has been lifted straight from this tutorial: https://sharksforarms.dev/posts/neovim-rust/
-- Extra bits n pieces found here: https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
--
local function on_attach(client, buffer)
    local keymap_opts = { buffer = buffer }

    -- Code navigation and shortcuts
    --vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
    --vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
    --vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
    --vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
    --vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
    --vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
    --vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
    --vim.keymap.set("n", "ga", vim.lsp.buf.code_action, keymap_opts)
    vim.keymap.set("n", "g]", vim.diagnostic.goto_next, keymap_opts)
    vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, keymap_opts)

    -- Show diagnostic popup on cursor hover
    --local diag_float_grp = vim.api.nvim_create_augroup("DiagnosticFloat", { clear = true })
    --vim.api.nvim_create_autocmd("CursorHold", {
    --    callback = function()
    --        vim.diagnostic.open_float(nil, { focusable = false })
    --    end,
    --    group = diag_float_grp,
    --})
end

return {
    "simrat39/rust-tools.nvim",
    opts = {
        tools = {
            runnables = {
                use_telescope = true,
            },
            inlay_hints = {
                auto = true,
                show_parameter_hints = false,
                parameter_hints_prefix = "",
                other_hints_prefix = "~",
            },
        },
        -- opts to send to nvim-lspconfig
        -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
        server = {
            on_attach = on_attach,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = {
                        command = "clippy",
                    },
                },
            },
        },
    },
}
