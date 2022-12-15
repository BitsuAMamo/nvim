local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins

	use("morhetz/gruvbox")

	use("szw/vim-maximizer")

	use("numToStr/Comment.nvim")

	use("nvim-lua/plenary.nvim")

	use("nvim-tree/nvim-tree.lua")

	use("kyazdani42/nvim-web-devicons")

	use("nvim-lualine/lualine.nvim")

	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
	use("nvim-telescope/telescope-fzy-native.nvim")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Managing and insalling lsp servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	-- Configuring lsp servers
	use("neovim/nvim-lspconfig")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")

	-- Formatting and Linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
