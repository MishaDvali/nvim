return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "python", "lua", "vim", "c_sharp" },
			auto_install = true;
		})
	end,
}
