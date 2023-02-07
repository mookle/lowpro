-- See https://github.com/hrsh7th/nvim-cmp#basic-configuration
return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
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
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                -- Add tab support
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = false,
                }),
            },
            window = {
                completion = cmp.config.window.bordered({ winhighlight = whl }),
                documentation = cmp.config.window.bordered({ winhighlight = whl }),
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "path" },
                { name = "buffer" },
                { name = "snippy" },
                { name = "elixir" },
                { name = "rust" },
            },
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