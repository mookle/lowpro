return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function(args)
        local signs = { Error = "", Warn = "", Hint = "", Info = "" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
        require("utils").map("n", "<space>d", "<cmd>TroubleToggle<cr>")
        require("trouble").setup(args.opts)
    end,
    opts = {
        auto_close = true,
        auto_preview = false,
        position = "right",
        width = 80,
    },
}
