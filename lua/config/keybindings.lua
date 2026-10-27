-- Leader keys (must be set before plugins load) --
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

-- Telescope --
map("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Telescope find files" })
map("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { desc = "Telescope live grep" })
map("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { desc = "Telescope buffers" })
map("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { desc = "Telescope help tags" })

-- Todo comments --
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Telescope all todos" })

-- Bufferin --
map("n", "<leader>b", "<cmd>Bufferin<CR>", { desc = "Bufferin" })

-- Oil --
map("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- LazyGit --
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- Overseer --
map("n", "<leader>rr", "<cmd>OverseerRun<CR>", { desc = "Overseer run" })
map("n", "<leader>rt", "<cmd>OverseerToggle<CR>", { desc = "Overseer toggle" })
map("n", "<leader>ra", "<cmd>OverseerTaskAction<CR>", { desc = "Overseer task action" })

-- Trouble --
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
map("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
map(
	"n",
	"<leader>cl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / references / ... (Trouble)" }
)
map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

-- DAP --
map("n", "<leader>du", function()
	require("dapui").toggle()
end, { desc = "DAP: Toggle ui" })
map("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end, { desc = "DAP: Create breakpoint" })
map("n", "<leader>dc", function()
	require("dap").continue()
end, { desc = "DAP: Continue" })
map("n", "<leader>dI", function()
	require("dap").step_into()
end, { desc = "DAP: Step Into" })
map("n", "<leader>dO", function()
	require("dap").step_over()
end, { desc = "DAP: Step Over" })
map("n", "<leader>dU", function()
	require("dap").step_out()
end, { desc = "DAP: Step Out" })
map("n", "<leader>dt", function()
	require("dap").terminate()
end, { desc = "DAP: Terminate" })
map("n", "<leader>dr", function()
	require("dapui").open({ reset = true })
end, { desc = "DAP: Reset" })

-- which-key --
map("n", "<leader>?", function()
	-- which-key is lazy-loaded on VeryLazy; load it on demand if needed
	require("lazy").load({ plugins = { "which-key.nvim" } })
	vim.schedule(function()
		require("which-key").show({ global = false })
	end)
end, { desc = "Buffer Local Keymaps (which-key)" })

-- Toggleterm --
map("n", "<leader>`", '<Cmd>execute v:count . "ToggleTerm"<CR>', { desc = "Toggle Terminal", silent = true })
map("i", "<leader>`", "<Esc><Cmd>ToggleTerm<CR>", { desc = "Toggle Terminal", silent = true })
-- terminal buffers get the mapping when toggleterm attaches to them
vim.api.nvim_create_autocmd("FileType", {
	pattern = "toggleterm",
	callback = function(event)
		map("t", "<leader>`", "<Cmd>ToggleTerm<CR>", {
			buffer = event.buf,
			desc = "Toggle Terminal",
			silent = true,
		})
	end,
})
