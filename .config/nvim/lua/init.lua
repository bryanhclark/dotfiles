require('completion')
require("nvim-lsp-installer").setup{}

-- Native LSP Setup
local on_attach = function(client, bufnr)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer=0 })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer=0 })
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer=0 })
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer=0 })
  vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer=0 })
  vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, { buffer=0 })
  vim.keymap.set("n", "<leader>dF", vim.diagnostic.goto_prev, { buffer=0 })
  vim.keymap.set("n", "<leader>dF", vim.diagnostic.goto_prev, { buffer=0 })

  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer=0 })
end


require('lspconfig')['tsserver'].setup{
  on_attach = on_attach,
}
require('lspconfig')['solargraph'].setup{
  on_attach = on_attach,
}

require('lspconfig')['sumneko_lua'].setup{
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

