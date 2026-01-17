-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd([[ autocmd BufEnter * silent! lcd %:p:h ]])

vim.opt.wrap = false

vim.opt.shada = "'100,<0,s10,h"

-- shada_std = '100,<50,s10,h
