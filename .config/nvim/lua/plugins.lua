local status, packer = pcall(require, 'packer')
if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'svrana/neosolarized.nvim',
		requires = { 'tjdevries/colorbuddy.nvim' }
	}
	use 'hoob3rt/lualine.nvim' -- Status line
	use 'L3MON4D3/LuaSnip' -- Snippet
	use 'onsails/lspkind-nvim' -- vs code like pictograms
	use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/nvim-cmp' -- Completion
	use 'neovim/nvim-lspconfig' -- LSP (Language Server Protocol for IDE
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'

	use 'nvim-lua/plenary.nvim' -- Common Utilities
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'

	use 'nvim-tree/nvim-web-devicons' -- File Icons
	use 'akinsho/bufferline.nvim'
	use 'norcalli/nvim-colorizer.lua' -- nvim colorizer
	use 'glepnir/lspsaga.nvim'
	use ' ' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via lua
	use 'MunifTanjim/prettier.nvim' -- Prettier plugin for nvim's built-in LSP client.
end)
