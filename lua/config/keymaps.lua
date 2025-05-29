-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local keymap = vim.keymap

-- BUffers
vim.keymap.set("n", "<leader>by", '<cmd>let @+ = expand("%:.")<cr>', { desc = "Copy relative path" })

--- Hop.nvim
vim.keymap.set("", "f", "<cmd>HopWord<cr>", { desc = "Hint words (Hop.nvim)" })
