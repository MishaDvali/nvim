local opts = { noremap = true, silent = true }
KEYMAP_OPTS = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.localmapleader = " "


local keymaps = {
	n = {
		["<leader><S-t>"] = ":ToggleTerm direction=tab<CR>",
		["<leader>tv"] = ":ToggleTerm size=50 direction=vertical<CR>",
		["<leader>tf"] = ":ToggleTerm direction=float<CR>",
		["<leader>th"] = ":ToggleTerm size=15 direction=horizontal<CR>",

		["<C-h>"] = "<C-w>h",
		["<C-j>"] = "<C-w>j",
		["<C-k>"] = "<C-w>k",
		["<C-l>"] = "<C-w>l",

		["<C-Up>"] = ":resize +2<CR>",
		["<C-Down>"] = ":resize -2<CR>",
		["<C-Right>"] = ":vertical resize +2<CR>",
		["<C-Left>"] = ":vertical resize -2<CR>",

		["<leader>bd"] = ":bdelete<cr>",

		["|"] = ":vsplit<CR>",
		["-"] = ":split<CR>",
	},

	i = {
		["jk"] = "<Esc>",
		["kj"] = "<Esc>",

		["df"] = "<Esc>$a",
		["fd"] = "<Esc>$a",

		["dk"] = "<Esc>la",
		["kd"] = "<Esc>la",
	},

	v = {
		[">"] = ">gv",
		["<"] = "<gv",

		["p"] = " _dP",
	},

	t = {
			 ["<esc>"] = [[<C-\><C-n>]],
			 ["jk"] = "<C-\\><C-n>",
			 ["<C-h>"] = "<Cmd>wincmd h<CR>",
			 ["<C-j>"] = "<Cmd>wincmd j<CR>",
			 ["<C-k>"] = "<Cmd>wincmd k<CR>",
			 ["<C-l>"] = "<Cmd>wincmd l<CR>",
			 ["<C-w>"] = "<C-\\><C-n><C-w>"
	}
}

for mode, mappings in pairs(keymaps) do
	for key, mapping in pairs(mappings) do
		keymap(mode, key, mapping, opts)
	end
end
