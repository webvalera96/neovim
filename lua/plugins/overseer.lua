return {
	"stevearc/overseer.nvim",
	---@module 'overseer'
	---@type overseer.SetupOpts
	opts = {},
	config = function()
		require("overseer").setup({
			strategy = {
				"terminal",
				quit_on_exit = "success",
			},
		})
	end,
	cmd = { "OverseerRun", "OverseerToggle", "OverseerTaskAction" },
}
