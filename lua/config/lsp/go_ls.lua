local capabilities = {
	textDocument = {
		foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		},
	},
}
capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

vim.lsp.config("go_ls", {
	cmd = { "gopls" },
	filetypes = { "go" },
	capabilities = capabilities,
})
