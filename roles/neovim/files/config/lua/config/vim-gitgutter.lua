local sign = '| '
vim.g.gitgutter_sign_added = sign
vim.g.gitgutter_sign_modified = sign
vim.g.gitgutter_sign_modified_removed = sign
vim.g.gitgutter_sign_removed = sign
vim.g.gitgutter_sign_removed_first_line = sign
vim.g.gitgutter_sign_removed_above_and_below = sign

local hi = vim.api.nvim_set_hl
-- highlight clear SignColumn
hi(0, 'GitGutterAdd', { ctermfg = 148, fg= '#afd700', bg = 'bg' })
hi(0, 'GitGutterChange', { ctermfg=74, fg = '#5fafd7', bg = 'bg' })
hi(0, 'GitGutterDelete', { ctermfg=167, fg = '#fb4934', bg = 'bg' })
hi(0, 'GitGutterChangeDelete', { link = 'GitGutterChange' })
