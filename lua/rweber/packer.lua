-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use, use_rocks)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- use_rocks 'jsregexp'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  -- config = function()
		 --  vim.cmd('colorscheme rose-pine')
	  -- end
  })


  use({
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    -- config = function()
      -- 	vim.cmd('colorscheme tokyonight-moon')
      -- end
    })

  use('cuducos/yaml.nvim')
  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use('rafamadriz/friendly-snippets')

  use({
		  'L3MON4D3/LuaSnip',
      config = function()
        require('luasnip.loaders.from_vscode').lazy_load()
      end
      -- run = "make install_jsregexp",
      -- requires = {
      --   {'rafamadriz/friendly-snippets'}
      -- }
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
      {'hrsh7th/cmp-nvim-lsp-signature-help'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
      {'saadparwaiz1/cmp_luasnip'},
		  -- {'L3MON4D3/LuaSnip'},
	  }
  }

  -- use('tpope/vim-commentary')
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  })
  -- use('m4xshen/autoclose.nvim')

  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
     vim.cmd('colorscheme catppuccin-macchiato')
    end
  }

  use('lewis6991/gitsigns.nvim')

  use {
    'kkoomen/vim-doge',
    run = ':call doge#install()'
  }
end)

