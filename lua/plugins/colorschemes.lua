return {
		{ "rose-pine/neovim", name = "rose-pine" },
		{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},}, 
		{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
		{ "rebelot/kanagawa.nvim", priority = 1000},
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		{ "savq/melange-nvim" },
		{"sekke276/dark_flat.nvim",
		config = function()
				vim.cmd "colorscheme kanagawa-wave"
		end

},
		
}
