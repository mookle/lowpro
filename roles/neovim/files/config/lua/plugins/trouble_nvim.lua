return {
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

        require("utils").map("n", "<space>d", "<cmd>TroubleToggle<cr>")
    end,
}
