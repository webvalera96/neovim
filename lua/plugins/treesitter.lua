return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'main',
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.config")
    configs.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
        "lua",
        "go",
      },
      sync_install = false,
    })
  end
}
