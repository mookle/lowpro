return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            section_separators = { left = '', right = '' },
            component_separators = '/',
            globalstatus = true,
        },
        sections = {
            lualine_a = {
                { 'mode', padding = { left = 2, right = 1 }}
            },
            lualine_b = {
                { 'filename', newfile_status = true, path = 3 }
            },
            lualine_x = { 'diagnostics' },
            lualine_x = { 'branch',  'diff' },
            lualine_y = { 'progress' },
            lualine_z = {
                { 'location', padding = { left = 1, right = 2 }},
            }
        }
    }
}
