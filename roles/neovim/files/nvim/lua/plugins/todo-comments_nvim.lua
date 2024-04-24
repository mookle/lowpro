return {
    "folke/todo-comments.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        keywords = {
            FIX = { alt = { "fix", "bug" } },
            TODO = { alt = { "todo" } },
            WARN = { alt = { "warn" } },
            NOTE = { alt = { "note", "info" } },
        },
    },
}
