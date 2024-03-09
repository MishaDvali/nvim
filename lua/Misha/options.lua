options = {
		number = true,
	relativenumber = true,
	mouse = "a",
	cursorline = true,
	termguicolors= true,
	tabstop = 4,
}
for k, v in pairs(options) do
	vim.opt[k] = v
end
