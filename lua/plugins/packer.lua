vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "navarasu/onedark.nvim"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } }
	}

	use "lewis6991/gitsigns.nvim"

	use {
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	}

	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use "neovim/nvim-lspconfig"
	use "onsails/lspkind-nvim"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/nvim-cmp"
	use "L3MON4D3/LuaSnip"

	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	}

	use "windwp/nvim-autopairs"
	use "windwp/nvim-ts-autotag"
end)
