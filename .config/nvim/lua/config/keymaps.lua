-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Tabs
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Prev Buffer" })

-- Windows
vim.keymap.set("n", "<leader>wf", "<cmd>WindowsMaximize<CR>", { desc = "Maximize current windows" })

vim.keymap.set("n", "<leader>q", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

vim.keymap.set("n", ";", ":", { desc = "Command mode" })

-- Newline
vim.keymap.set("n", "<leader>o", "o<esc>", { desc = "New line up" })
vim.keymap.set("n", "<leader>O", "O<esc>", { desc = "New line down" })

-- Wrap
vim.opt.whichwrap:append("h,l")

-- Terminal
vim.keymap.set("n", "<A-I>", function()
  Snacks.terminal(nil, { win = { position = "float", width = 125, height = 30, border = "rounded" } })
end, { desc = "Terminal (root)" })

vim.keymap.set("n", "<A-i>", function()
  Snacks.terminal(
    nil,
    { cwd = LazyVim.root(), win = { position = "float", width = 125, height = 30, border = "rounded" } }
  )
end, { desc = "Terminal (cwd)" })

vim.keymap.set("t", "<A-i>", "<cmd>close<cr>", { desc = "Hide Terminal" })
