require('lspconfig').gdscript.setup {
    cmd = { 'nc', 'localhost', '6005' },
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}

