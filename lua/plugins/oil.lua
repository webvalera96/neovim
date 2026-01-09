return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
  },
  config = function(_, opts) 
    require("oil").setup(opts)
  end,
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  keys = {
    { "-", "<Cmd>Oil<CR>", desc = "Browse files from here" },
  },
}
