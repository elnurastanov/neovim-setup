vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'lewis6991/gitsigns.nvim'
	
	use 'navarasu/onedark.nvim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use 'neovim/nvim-lspconfig'
end)
