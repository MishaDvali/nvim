options = {
	number = true,
	relativenumber = true,
	mouse = "a",
	cursorline = true,
	termguicolors = true,
	shiftwidth = 4,
	tabstop = 4,
	scrolloff = 10,
}
for k, v in pairs(options) do
	vim.opt[k] = v
end
