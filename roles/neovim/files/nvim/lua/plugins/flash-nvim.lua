local labels = "tnseriaogmplfuwyqbjdhdcxzkv"

return {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {
        labels = labels,
        search = {
            multi_window = false,
        },
        label = {
            uppercase = false,
            rainbow = {
                enabled = true,
                shade = 4,
            },
        },
        modes = {
            treesitter = {
                labels = labels,
            },
        }
    },
    keys = {
    {
        "<space><cr>",
        mode = { "n", "o", "x" },
        function()
            require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
    },
    {
        "<space>t",
        mode = { "n", "o", "x" },
        function()
            require("flash").treesitter_search()
        end,
        desc = "Flash Treesitter Search",
    },
  },
}

