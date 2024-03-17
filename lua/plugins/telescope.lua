return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require('telescope').setup{
				defaults = {
					-- Default configuration for telescope goes here:
					-- config_key = value,
					mappings = {
						n = {
							['<c-d>'] = require('telescope.actions').delete_buffer,

						}, -- n
						i = {
							["<C-h>"] = "which_key",
							['<c-d>'] = require('telescope.actions').delete_buffer
						} -- i
					} -- mappings
				}, -- defaults
			} -- telescope setup
		end,
	},
}
