local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>2

wk.register({
  c = {
    name = "code actions",
    a = {
      function()
        if vim.bo.filetype == "python" then
                -- Go to the end of the word in Normal mode
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("e", true, false, true), 'n', true)

                -- Enter Insert mode and prepare to send backspace after a delay
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("a", true, false, true), 'n', true)

                -- Delay function to send a backspace in Insert mode
                vim.defer_fn(function()
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<BS>", true, false, true), 'i', false)

                    -- Additional delay function to send a tab
                    vim.defer_fn(function()
                        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), 'i', false)
                    end, 200) -- Delay of 200 milliseconds for the Tab keypress
                end, 300) -- Delay of 300 milliseconds for the Backspace keypressds
        else
          vim.cmd("lua vim.lsp.buf.code_action()")
        end
      end

      , "code action" },
    },
    d = {
      c = { "<cmd>cd ~/.config/nvim<CR>", "Neovim Conf" },
    },
    e = {
      "<cmd>:NvimTreeToggle<cr>", "Toggle Tree"
    },
    s = {
      name = "search",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      l = { "<cmd>Telescope  lsp_references<cr>", "Find References" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      t = { "<cmd>Telescope live_grep<cr>", "Search Text" },
    },
    p = {
      "<cmd>:MarkdownPreview<cr>", "Preview Markdown"
    }
  }, { prefix = "<leader>" })
