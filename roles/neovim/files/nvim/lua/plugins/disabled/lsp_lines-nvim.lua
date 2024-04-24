return {
    'ErichDonGubler/lsp_lines.nvim',
    enabled = false,
    config = function()
        vim.diagnostic.config({
            virtual_text = false,
            virtual_lines = false,
        })
        require("utils").map("n", "<space>l", require("lsp_lines").toggle)
        require("lsp_lines").setup()
    end,
}
