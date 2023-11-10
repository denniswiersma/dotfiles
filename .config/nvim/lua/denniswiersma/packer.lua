-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("ThePrimeagen/git-worktree.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope-fzf-native.nvim", { run = "make" })

	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use("theprimeagen/harpoon")

	use("mbbill/undotree")

	use("tpope/vim-fugitive")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	use("m4xshen/autoclose.nvim")

	use("ggandor/leap.nvim")

	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
	})

	use("smjonas/inc-rename.nvim")

	use({
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	use("nvim-tree/nvim-web-devicons")

	use({ "kylechui/nvim-surround", tag = "*" })

	use({
		"folke/trouble.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})

	use("numToStr/Comment.nvim")

	use("lewis6991/gitsigns.nvim")

	use("HiPhish/rainbow-delimiters.nvim")

	use("andweeb/presence.nvim")

	use("mhartington/formatter.nvim")

	use({ "folke/todo-comments.nvim", requires = {
		"nvim-lua/plenary.nvim",
	} })

	use("weilbith/nvim-code-action-menu")

	use("jalvesaq/Nvim-R")

	use({
		"kkoomen/vim-doge",
		run = ":call doge#install()",
	})
	use("github/copilot.vim")

	use({
		"j-hui/fidget.nvim",
		tag = "legacy",
	})

	use("ray-x/lsp_signature.nvim")

	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})

	use("lukas-reineke/indent-blankline.nvim")

	use("VidocqH/lsp-lens.nvim")
end)
