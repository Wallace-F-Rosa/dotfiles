local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'kaicataldo/material.vim'
  use 'hoob3rt/lualine.nvim'
  use 'neovim/nvim-lspconfig' -- LSP - Code Completion
  use 'onsails/lspkind-nvim' -- vscode like pictograms
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cap source for neovim lsp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp' -- Code completion
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'BurntSushi/ripgrep' }
    },
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'norcalli/nvim-colorizer.lua'
  use {
    "glepnir/lspsaga.nvim",
    branch = "main",
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Neovim as a language server to inject LSP diagnostics, formatting, and more
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame and browser
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }

  use {
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-telescope/telescope-dap.nvim'
  } -- Debugging with Neovim DAP

  use {
    'numToStr/Comment.nvim',
  }
end)
