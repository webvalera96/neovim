-- return {
-- 	{
-- 		ft = "neo-tree",
-- 		"nvim-neo-tree/neo-tree.nvim",
-- 		branch = "v3.x",
-- 		dependencies = {
-- 			"nvim-lua/plenary.nvim",
-- 			"MunifTanjim/nui.nvim",
-- 			"nvim-tree/nvim-web-devicons", -- optional, but recommended
-- 		},
-- 		keys = {
-- 			{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree" },
-- 		},
-- 		opts = {
-- 			window = {
-- 				position = "left",
-- 				width = 30,
-- 			},
-- 		},
-- 		lazy = false, -- neo-tree will lazily load itself
-- 	},
-- }

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
	end,
	keys = {
		{ "<leader>b", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
	},
	opts = {
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		},
	},
}
