return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		theme = "dracula",
		options = {
			disabled_filetypes = {
				statusline = {
					"NvimTree",
					"Avante",
					"AvanteInput",
					"AvanteSelectedFiles",
					"gitsigns-blame",
					"OverseerList",
					"OverseerOutput",
				},
			},
		},
	},
}
