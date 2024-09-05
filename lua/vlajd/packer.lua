vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'https://gitlab.com/__tpb/monokai-pro.nvim',
    as = 'monokai-pro.nvim'
  }

  use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = "v4.x",
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'}
    }
  }

  use( 'feline-nvim/feline.nvim' )
end)

