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
<<<<<<< HEAD
		require 'nvim-treesitter.install'.compilers = {"zig", "clang",  "gcc", }
=======
		require 'nvim-treesitter.install'.compilers = {"zig", "clang", "gcc"}
>>>>>>> b360fae (initial)
	end,
}
