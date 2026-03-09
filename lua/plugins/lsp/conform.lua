return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- Set up format-on-save
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2", "-ci" },
      },
    },
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    -- vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
