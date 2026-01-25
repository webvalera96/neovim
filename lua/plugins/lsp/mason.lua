return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			PATH = "prepend",
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = {
				exclude = {
					"rust_analyzer",
				},
			},
			ensure_installed = {
				"gopls",
				"lua_ls",
				"rust_analyzer",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		handlers = {
			gopls = function()
				require("lspconfig").gopls.setup({
					capabilities = {
						textDocument = {
							hoverProvider = true, -- явно включи hover
						},
					},
					settings = {
						gopls = {
							gofumpt = true, -- синхронизируй с formatter
							completeUnimported = true,
							usePlaceholders = true,
							hints = {
								assignVariableTypes = true,
								compositeLiteralFields = true,
								constantValues = true,
								parameterNames = true,
							},
							analyses = {
								unusedparams = true,
								shadow = true,
							},
						},
					},
				})
			end,
		},
	},
}
