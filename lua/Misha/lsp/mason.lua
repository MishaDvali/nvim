local servers = {
	"lua_ls",
	"pyright",
	"html",
	"ts_ls", -- renamed from tsserver
	"csharp_ls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("Misha.lsp.handlers").on_attach,
		capabilities = require("Misha.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "Misha.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	-- Use vim.lsp.config and vim.lsp.enable for the new API
	vim.lsp.config(server, opts)
	vim.lsp.enable(server)
end
