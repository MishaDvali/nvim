local opts = { noremap = true, silent = true }

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

		["<C-d>"] = "<C-d>zz",
		["<C-u>"] = "<C-u>zz",

		["<leader>ff"] = ":Telescope find_files<CR>",
		["<leader>fg"] = ":Telescope live_grep<CR>",
		["<leader>F"] = ":Telescope buffers<CR>",
		["<leader>fb"] = ":Telescope buffers<CR>",
		["<leader>fh"] = ":Telescope help_tags<CR>",

		["<leader>bd"] = ":bdelete<cr>",

		["|"] = ":vsplit<CR>",
		["-"] = ":split<CR>",

		["<C-g>"] = ":ToggleTerm direction=tab<cr>lazygit<cr>",
		["<C-p>"] = ":ToggleTerm direction=tab<CR>venv\\Scripts\\activate<CR>",
	},

	i = {
		["<C-d>"] = "<C-d>zz",
		["<C-u>"] = "<C-u>zz",

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
}

for mode, mappings in pairs(keymaps) do
	for key, mapping in pairs(mappings) do
		keymap(mode, key, mapping, opts)
	end
end
