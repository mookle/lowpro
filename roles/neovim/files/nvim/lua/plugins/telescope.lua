-- This layout config requires minor modifications to the "horizontal" layout:
--
-- diff --git a/lua/telescope/pickers/layout_strategies.lua b/lua/telescope/pickers/layout_strategies.lua
-- index 7af7761..29df91e 100644
-- --- a/lua/telescope/pickers/layout_strategies.lua
-- +++ b/lua/telescope/pickers/layout_strategies.lua
-- @@ -348,7 +348,7 @@ layout_strategies.horizontal = make_documented_layout(
--      results.height = height - prompt.height - h_space
--
--      if self.previewer then
-- -      preview.height = height - 2 * bs
-- +      preview.height = height - 3 * bs
--      else
--        preview.height = 0
--      end
-- @@ -368,7 +368,7 @@ layout_strategies.horizontal = make_documented_layout(
--      preview.line = math.floor((max_lines - height) / 2) + bs + 1
--      if layout_config.prompt_position == "top" then
--        prompt.line = preview.line
-- -      results.line = prompt.line + prompt.height + 1 + bs
-- +      results.line = prompt.line + 1 + bs
--      elseif layout_config.prompt_position == "bottom" then
--        results.line = preview.line
--        prompt.line = results.line + results.height + 1 + bs

local no_titles = {
    --prompt_title = false,
    results_title = false,
    preview_title = false,
}

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        defaults = {
            layout_config = {
                width = 0.8,
                height = 0.8,
                prompt_position = "top",
                preview_width = 0.7,
            },
            sorting_strategy = "ascending",
            borderchars = {
                prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
                results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
                preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            },
        },
        pickers = {
            find_files = no_titles,
            live_grep = no_titles,
            buffers = no_titles,
            oldfiles = no_titles,
            quickfix = no_titles,
            loclist = no_titles,
            jumplist = no_titles,
        },
    },
    config = function(args)
        local map = require("utils").map
        local builtin = require("telescope.builtin")
        args.opts.defaults.mappings = {
            i = {
                ["<esc>"] = require("telescope.actions").close
            },
        }
        require("telescope").setup(args.opts)
        map("n", "<space>o", builtin.find_files, {})
        map("n", "<space>/", builtin.live_grep, {})
        map("n", "<space>b", builtin.buffers, {})
        map("n", "<space>h", builtin.oldfiles, {})
        map("n", "<space>lq", builtin.quickfix, {})
        map("n", "<space>ll", builtin.loclist, {})
        map("n", "<space>lj", builtin.jumplist, {})
    end,
}
