return {
    "dcampos/nvim-snippy",
    dependencies = {
        "honza/vim-snippets",
    },
    config = function()
        vim.cmd([[
            imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
            imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
            imap <C-x> <C-o><Plug>(snippy-cut-text)
            smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
            smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
        ]])
    end,
}
