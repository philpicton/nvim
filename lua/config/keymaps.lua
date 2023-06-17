-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

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


-- Toggle NeoTree
vim.keymap.set({"n","v"},"<C-e>", ":NvimTreeToggle<CR>")

-- Toggle Telescope find files
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n","<leader>g", ":Telescope live_grep<CR>")

-- go up and down half page and center cursor
vim.keymap.set("n","<C-u>", "<C-u>zz")
vim.keymap.set("n","<C-d>", "<C-d>zz")

-- Open git status split
vim.keymap.set("n","<leader>gs", ":vert G<cr>")
-- Git diff pick left or right
vim.keymap.set("n","<leader>gh", ":diffget //2<cr>")
vim.keymap.set("n","<leader>gl", ":diffget //3<cr>")
-- Git blame in editor
vim.keymap.set("n","<silent>ba", ":GitBlameToggle<CR>")

-- Clipboard
vim.keymap.set("n","<leader>c", '"+y') -- copy selection to system clipboard
vim.keymap.set("n","<leader>v", '"+p') -- paste from system clipboard below
vim.keymap.set("n","<leader>p", '"+p') -- paste from system clipboard into selection below
vim.keymap.set("n","<leader>P", '"+P') -- paste from system clipboard into selection above
vim.keymap.set("n","<leader>P", '"+P') -- paste from system clipboard above

-- Diffview
vim.keymap.set("n","<leader>dfo", ":DiffviewOpen<CR>")
vim.keymap.set("n","<leader>dff", ":DiffviewFileHistory %<CR>")
vim.keymap.set("n","<leader>dfx", ":DiffviewClose<CR>")


-- Buffer Navigation
vim.keymap.set("n","<leader><Right>", ":bnext<CR>")
vim.keymap.set("n","<leader><Left>", ":bprevious<CR>")

