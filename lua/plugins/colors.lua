local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
	"binhtran432k/dracula.nvim",
	config = function()
		vim.cmd.colorscheme("dracula")
		enable_transparency()
	end,
	priority = 1000,
	opts = {},
}
