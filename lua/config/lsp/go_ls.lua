local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("go_ls", {
  cmd = { 'gopls' },
  filetypes = { 'go' },
  capabilities = capabilities
})
