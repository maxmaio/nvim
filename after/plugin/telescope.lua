local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>st', function()
  builtin.grep_string({
    additional_args = function(opts)
      return {"--exclude-dir", ".env"}
    end
  })
end, {})


