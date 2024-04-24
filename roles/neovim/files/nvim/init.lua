local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("options")
require("lazy").setup("plugins")

vim.o.background = "dark"
vim.cmd("colorscheme nordic")

--vim.cmd.cabbr({ args = { "<expr>", "%", "&filetype == 'oil' ? bufname('%')[6:] : '%'" } })

--local augroup_cdpwd = vim.api.nvim_create_augroup('augroup_cdpwd', { clear = true })
--vim.api.nvim_create_autocmd("VimEnter", {
--    pattern = '*',
--    group = augroup_cdpwd,
--  callback = function() vim.api.nvim_set_current_dir(vim.cmd.expand('%')) end,
--})
