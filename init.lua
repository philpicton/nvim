-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").volar.setup({
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
})
require("lspconfig").tailwindcss.setup({})
