return {
	name = "zig run",
	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			cmd = { "zig", "run", file },
			components = { { "on_output_quickfix", open = false }, "default" },
		}
	end,

	condition = {
		filetype = { "zig" },
	},
}
