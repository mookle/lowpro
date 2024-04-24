return {
    "elixir-tools/elixir-tools.nvim",
    config = function()
        require("elixir").setup()
    end,
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
}

