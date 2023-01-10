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
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "code action" },
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
