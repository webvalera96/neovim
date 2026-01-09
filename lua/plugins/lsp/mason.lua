return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      },
      PATH = "prepend"

    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "gopls", "lua-language-server",
        -- DAP
        -- Formatters
        "stylua", "goimports", "gofmt",
        -- Linters
      },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    }
  }
}
