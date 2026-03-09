return {
  name = "lua run",
  builder = function()
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "lua", file },
      components = { { "on_output_quickfix", open = false }, "default" },
    }
  end,

  condition = {
    filetype = { "lua" },
  },
}
