vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- colorscheme
  use("luisiacc/gruvbox-baby")
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  -- Insert or delete brackets, parens, quotes in pair.
  use('jiangmiao/auto-pairs')
  -- Insert or delete html tags in pair
  use('windwp/nvim-ts-autotag')
  -- view treesitter ast
  use('nvim-treesitter/playground')
  -- an undo tree tracker
  use('mbbill/undotree')
  -- git wrapper thing... wouldn't reccomend
  use('tpope/vim-fugitive')
  -- git-blame
  use('f-person/git-blame.nvim')
  -- handy github like markdown previewer
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- prettier formatter
  use('prettier/vim-prettier')
  -- lsp easy setup thing
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use('github/copilot.vim')
  -- makes it easy to create leader menu
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)
