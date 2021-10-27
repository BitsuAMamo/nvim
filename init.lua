require("config")

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- Color Theme
    use 'rafamadriz/neon'

    -- Treesitter Syntax Highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- Treesitter - Plugins
    use {
      'p00f/nvim-ts-rainbow',
    }

    -- Telescope and plugins
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
    }
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- LSP
    use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
    }

    -- LSP - Autocompletion
    use {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'saadparwaiz1/cmp_luasnip',
      'ray-x/cmp-treesitter',
    }

    -- LSP - Snippets
    use 'L3MON4D3/LuaSnip'

    -- UNDO
    use 'mbbill/undotree'



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
--
