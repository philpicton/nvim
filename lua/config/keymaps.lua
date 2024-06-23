-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- leader key is space
vim.g.mapleader = " "

-- Relative or absolute number lines
vim.cmd([[
function! NumberToggle()
if(&nu == 1)
set nu!
set rnu
else
set nornu
set nu
endif
endfunction
]])

-- Toggle relative line numbers
vim.keymap.set("n", "<leader>8", ":call NumberToggle()<CR>", { desc = "Toggle relative line numbers" })

-- Move lines up and down
vim.keymap.set({ "n", "v" }, "<C-S-Down>", ":MoveLine(1)<CR>")
vim.keymap.set({ "n", "v" }, "<C-S-Up>", ":MoveLine(-1)<CR>")

-- Toggle live grep
vim.keymap.set("n", "<leader>gf", ":Telescope live_grep<CR>")

-- Buffer Navigation
vim.keymap.set("n", "<leader><Right>", ":bnext<CR>")
vim.keymap.set("n", "<leader><Left>", ":bprevious<CR>")
