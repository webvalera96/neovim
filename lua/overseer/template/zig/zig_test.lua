return {
	name = "zig test",
	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			cmd = { "zig", "test", file },
			components = { { "on_output_quickfix", open = false }, "default" },
		}
	end,

	condition = {
		filetype = { "zig" },
	},
}
