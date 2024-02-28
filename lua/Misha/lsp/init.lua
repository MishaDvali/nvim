local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "Misha.lsp.mason"
require("Misha.lsp.handlers").setup()
require "Misha.lsp.null-ls"
