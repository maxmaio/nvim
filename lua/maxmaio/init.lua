require("maxmaio.remap")
require("maxmaio.packer")
require("maxmaio.set")
-- suto format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
-- Set to auto read when a file is changed from the outside
vim.cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { "*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html " },
  command = "Prettier"
});

vim.cmd('colorscheme gruvbox-baby')
vim.cmd [[set clipboard=unnamed]]
vim.g.nvim_tree_respect_buf_cwd = 1
