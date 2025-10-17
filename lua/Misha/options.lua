options = {
	number = true,
	relativenumber = true,
	mouse = "a",
	cursorline = true,
	termguicolors = true,
	shiftwidth = 2,
	tabstop = 2,
	scrolloff = 10,
}
for k, v in pairs(options) do
	vim.opt[k] = v
end
