-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>rJ", function()
  vim.cmd("wincmd J")
  vim.cmd("resize 15")
end, { desc = "R console below (15 lines)" })

vim.keymap.set("n", "<leader>rL", function()
  vim.cmd("wincmd L")
  vim.cmd("vertical wincmd =")
end, { desc = "R console right (equal width)" })
