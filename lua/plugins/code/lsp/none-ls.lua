return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- core builtins
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.stylua,
				-- diagnostics from extras:
				require("none-ls.diagnostics.eslint_d"),
				-- maybe formatting from extras:
				require("none-ls.formatting.eslint_d"),
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					local aug = vim.api.nvim_create_augroup("NullLsFormatting", {})
					vim.api.nvim_clear_autocmds({ group = aug, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = aug,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})

		-- as before, disable formatting on LSPs that conflict
		-- vim.lsp.config.ts_ls.setup({
		--   on_attach = function(client, bufnr)
		--     client.server_capabilities.documentFormattingProvider = false
		--   end,
		-- })

		vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
	end,
}
