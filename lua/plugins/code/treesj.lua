vim.keymap.set("n", "zf", function () require('treesj').toggle() end, KEYMAP_OPTS)
vim.keymap.set("n", "z<S-f>", function () require('treesj').toggle({ split = { recursive = true } }) end, KEYMAP_OPTS)

return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>s' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup({
			use_default_keymaps = false,
			max_join_length = 150,
		})
  end,
}
