local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  e = {
    "<cmd>:NvimTreeToggle<cr>", "Toggle Tree"
  },
  s = {
    name = "search", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" }, -- additional options for creating the keymap
    t = { "<cmd>Telescope live_grep<cr>", "Search Text"},
    ["1"] = "which_key_ignore",  -- special label to hide it in the popup
  },
}, { prefix = "<leader>" })
