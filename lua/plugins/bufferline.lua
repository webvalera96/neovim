return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "File explorer",
						text_align = "center",
						separator = false,
					},
				},
			},
		})
	end,
}
