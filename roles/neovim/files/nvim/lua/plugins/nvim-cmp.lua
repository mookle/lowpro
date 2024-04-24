-- See https://github.com/hrsh7th/nvim-cmp#basic-configuration
return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "hrsh7th/cmp-path",
        "dcampos/nvim-snippy",
        "dcampos/cmp-snippy",
    },
    opts = function()
        local whl = "Normal:Normal,FloatBorder:FloatBorderOverride,CursorLine:Visual,Search:None"
        local cmp = require("cmp")
        return {
            preselect = cmp.PreselectMode.None,
            snippet = {
                expand = function(args)
                    require("snippy").expand_snippet(args.body)
                end,
            },
            mapping = {
                ["<S-tab>"] = cmp.mapping.select_prev_item(),
                ["<up>"] = cmp.mapping.select_prev_item(),
                ["<tab>"] = cmp.mapping.select_next_item(),
                ["<down>"] = cmp.mapping.select_next_item(),
                ["<S-up>"] = cmp.mapping.scroll_docs(-1),
                ["<S-down>"] = cmp.mapping.scroll_docs(1),
                ["<cr>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = false,
                }),
            },
            window = {
                completion = cmp.config.window.bordered({ winhighlight = whl }),
                documentation = cmp.config.window.bordered({ winhighlight = whl }),
            },
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "snippy" },
                { name = "path" },
            }),
        }
    end,
    config = function(args)
        -- menuone: popup even when there's only one match
        -- noinsert: Do not insert text until a selection is made
        -- noselect: Do not auto-select, nvim-cmp plugin will handle this for us.
        vim.o.completeopt = "menuone,noinsert,noselect"
        -- Avoid showing extra messages when using completion
        vim.opt.shortmess = vim.opt.shortmess + "c"
        -- Cheeky hack to fix the border colour used by nvim-cmp
        vim.api.nvim_set_hl(0, "FloatBorderOverride", { fg = "#254147" })
        require("cmp").setup(args.opts())
    end,
}
