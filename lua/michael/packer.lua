-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Theme
  use 'ellisonleao/gruvbox.nvim'

  use('theprimeagen/harpoon')
  use('theprimeagen/vim-be-good')

  use('rstacruz/vim-closer')
  use('tpope/vim-endwise')
  use('tpope/vim-commentary')
  use('vim-scripts/upAndDown')
  use('windwp/nvim-ts-autotag')


  use { 'akinsho/toggleterm.nvim', tag = '*' }

  use { 'z0mbix/vim-shfmt', ft = { "sh", "bash" } }

  use { 'norcalli/nvim-colorizer.lua', config = function()
    require('colorizer').setup()
  end }

  use {
    'folke/trouble.nvim',
    requires = { "nvim-tree/nvim-web-devicons" },
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    ft = "markdown"
  })

  -- LSP stuff
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
    }
  }
  use({ 'L3MON4D3/LuaSnip', tag = 'v2.*', run = 'make install_jsregexp' })
end)
