return {
    'ErichDonGubler/lsp_lines.nvim',
    config = function()
        vim.diagnostic.config({
            virtual_text = false,
            virtual_lines = false,
        })
        require("utils").map("n", "<space>d", require("lsp_lines").toggle)
        require("lsp_lines").setup()
    end,
}
