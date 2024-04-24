return {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    ft = { 'rust' },
    opts = {
        server = {
            on_attach = function(client, bufnr)
                require("utils").map("n", "<space>d", vim.cmd.RustLsp('renderDiagnostic'), {})
            end
        },
    },
    config = function()
--        vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
    end,
}
