-- my remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-a>", ":q<cr>")
-- these all make it so d*, c*, and x don't save in register (personal contreversial opinion)
vim.keymap.set("n", "d", "\"_d")
vim.keymap.set("v", "d", "\"_d")
vim.keymap.set("n", "c", "\"_c")
vim.keymap.set("v", "c", "\"_c")
vim.keymap.set("n", "x", "\"_x")
