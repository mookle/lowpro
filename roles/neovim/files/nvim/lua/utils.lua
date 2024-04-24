local M = {}

-- wrapper for mapping commands
function M.map(mode, input, cmd, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, input, cmd, options)
end

return M
