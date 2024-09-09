return {

	"nvim-treesitter/nvim-treesitter",
	config = function()
	-- require("nvim-treesitter").setup({})
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
                "bash",
                "c",
                "css",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "python",
                "query",
                "racket",
                "regex",
                "rust",
                "vim",
                "vimdoc",
            },
			auto_install = true;
		})
		require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
	end,
}
