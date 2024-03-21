return {
	-- { "rose-pine/neovim", name = "rose-pine" },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd("colorscheme dark_flat")
			vim.cmd("highlight Normal guibg=none")
			vim.cmd("highlight NonText guibg=none")
			vim.cmd("highlight Normal ctermbg=none")
			vim.cmd("highlight NonText ctermbg=none")
		end,
	},
	-- {"techtuner/aura-neovim"},
	-- { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	-- { "rebelot/kanagawa.nvim", priority = 1000 },
	-- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	-- { "savq/melange-nvim",},
	{ "sekke276/dark_flat.nvim" },
}
