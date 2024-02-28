local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
		--{ "rose-pine/neovim", name = "rose-pine" },
		--{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},}, 
		--{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
		--{ "rebelot/kanagawa.nvim", priority = 1000},
		--{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		--{ "savq/melange-nvim" },
		{"sekke276/dark_flat.nvim"},

		

		{ "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" }, -- The completion plugin
		{ "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }, -- buffer completions
		{ "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }, -- path completions
		
		{ "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" }, -- enable LSP
		{ "hrsh7th/cmp-nvim-lsp", commit = "3cf38d9c957e95c397b66f91967758b31be4abe6" },
		{ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" },

		{"williamboman/mason.nvim"},
		{"williamboman/mason-lspconfig.nvim"},
		{"neovim/nvim-lspconfig"},

		{ "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" }, --snippet engine
		{ "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" }, -- a bunch of snippets to use

}



local opts = {}
require("lazy").setup(plugins, opts)
require("mason").setup()
