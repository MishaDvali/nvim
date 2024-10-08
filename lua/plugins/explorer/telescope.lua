return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
			vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
			vim.keymap.set("n", "<leader>F", ":Telescope buffers<CR>")
			vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
			vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
			require('telescope').setup{
				defaults = {
					-- Default configuration for telescope goes here:
					-- config_key = value,
					mappings = {

						i = {
							["<C-h>"] = "which_key",
							["<leader>d"] = require('telescope.actions').delete_buffer,
						}, -- i
						n = {
							["<leader>d"] = require('telescope.actions').delete_buffer,
						}, -- n
					} -- mappings
				}, -- defaults
			} -- telescope setup
		end,
	},
}
