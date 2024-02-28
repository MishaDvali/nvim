local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.localmapleader = " "


local keymaps = {
  n = {
	  ['<leader>e'] = ":Lex 15<cr>",


	  ['<C-h>'] = "<C-w>h",
	  ['<C-j>'] = "<C-w>j",
	  ['<C-k>'] = "<C-w>k",
	  ['<C-l>'] = "<C-w>l",

	  ['<C-Up>'] = ":resize +2<CR>",
	  ['<C-Down>'] = ":resize -2<CR>",
	  ['<C-Right>'] = ":vertical resize +2<CR>",
	  ['<C-Left>'] = ":vertical resize -2<CR>",

	  ['<C-d>'] = "<C-d>zz",
	  ['<C-u>'] = "<C-u>zz",
  },

  i = {
	  ['<C-d>'] = "<C-d>zz",
	  ['<C-u>'] = "<C-u>zz",


	  ['jk'] = "<Esc>",
	  ['kj'] = "<Esc>",


	  ['df'] = "<Esc>$a",
	  ['fd'] = "<Esc>$a",


	  ['dk'] = "<Esc>la",
	  ['kd'] = "<Esc>la",
  },

  v = {
		  ['>'] = ">gv",
		  ['<'] = "<gv",

		  ['p'] = " _dP",
  },
}


for mode, mappings in pairs(keymaps) do
	for key, mapping in pairs(mappings) do
		keymap(mode, key, mapping, opts)
	end
end

