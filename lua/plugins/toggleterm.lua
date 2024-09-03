return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		size = 50,
		hide_numbers = true,
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = 2,
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = "float",
		close_on_exit = true,
		shell = vim.o.shell,
		float_opts = {
			border = "curved",
			width = 170,
			height = 30,
			winblend = 0,
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
		config = function()
			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
			require("toggleterm").setup({})
		end,

	},
}
