require("maxmaio.remap")
require("maxmaio.packer")
require("maxmaio.set")
-- suto format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.cmd('colorscheme gruvbox')
vim.cmd [[set clipboard=unnamed]]
