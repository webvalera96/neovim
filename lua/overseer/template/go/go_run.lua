return {
  name = "go run",
  builder = function()
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "go", "run", file },
      components = { { "on_output_quickfix", open = true }, "default" },
    }
  end,

  condition = {
    filetype = { "go" },
  },
}
