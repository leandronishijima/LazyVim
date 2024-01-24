-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local keymap = vim.keymap

-- BUffers
vim.keymap.set("n", "<leader>by", '<cmd>let @+ = expand("%:.")<cr>', { desc = "Copy relative path" })

--- Hop.nvim
vim.keymap.set("", "f", "<cmd>HopWord<cr>", { desc = "Hint words (Hop.nvim)" })

-- Neotree
vim.keymap.set("n", "<leader>o", function()
  if vim.bo.filetype == "neo-tree" then
    vim.cmd.wincmd("p")
  else
    vim.cmd.Neotree("focus")
  end
end, { desc = "Toggle Focus Neotree" })

-- No-neck-pain
vim.keymap.set("n", "<leader>wc", "<cmd>NoNeckPain<cr>", { desc = "Toggle No-neck-pain" })
