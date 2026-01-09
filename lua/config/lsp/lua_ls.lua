local capabilities = {
	textDocument = {
		foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		},
	},
}
capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	capabilities = capabilities,
}
