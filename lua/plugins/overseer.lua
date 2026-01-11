return {
  "stevearc/overseer.nvim",
  ---@module 'overseer'
  ---@type overseer.SetupOpts
  opts = {},
  config = function()
    require("overseer").setup()
  end,
  keys = {
    { "<leader>rr", "<cmd>OverseerRun<CR>",        desc = "Overseer run" },
    { "<leader>rt", "<cmd>OverseerToggle<CR>",     desc = "Overseer toggle" },
    { "<leader>ra", "<cmd>OverseerTaskAction<CR>", desc = "Overseer task action" },
  }
}
