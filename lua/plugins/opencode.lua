return {
	"nickjvandyke/opencode.nvim",
	version = "*",
	config = function()
		---@type opencode.Opts
		vim.g.opencode_opts = {}

		vim.keymap.set({ "n", "x" }, "<leader>oa", function()
			require("opencode").ask("@this: ")
		end, { desc = "Ask OpenCode" })
		vim.keymap.set({ "n", "x" }, "<leader>os", function()
			require("opencode").select()
		end, { desc = "Select OpenCode" })
		vim.keymap.set({ "n", "x" }, "<leader>op", function()
			require("opencode").prompt("@this")
		end, { desc = "Prompt OpenCode" })
		vim.keymap.set({ "n", "x" }, "<leader>oo", function()
			return require("opencode").operator("@this")
		end, { desc = "Send range to OpenCode", expr = true })
		vim.keymap.set("n", "<leader>ol", function()
			return require("opencode").operator("@this") .. "_"
		end, { desc = "Send line to OpenCode", expr = true })
	end,
}
