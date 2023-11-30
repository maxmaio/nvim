require("maxmaio.remap")
require("maxmaio.packer")
require("maxmaio.set")
-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
-- Set to auto read when a file is changed from the outside
vim.cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]
-- run prettier on save
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { "*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html " },
  command = "Prettier"
});

vim.cmd [[set nocp]]
vim.cmd [[filetype plugin on]]

-- colorscheme
vim.cmd('colorscheme gruvbox-baby')
-- make it so yanks go to system clipboard
vim.cmd [[set clipboard=unnamed]]
-- can't remember this one but scared to delete LOL
vim.g.nvim_tree_respect_buf_cwd = 1

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

