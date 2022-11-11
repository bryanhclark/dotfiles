-- Native LSP Setup
local on_attach = function(client, bufnr)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer=0 })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer=0 })
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer=0 })
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer=0 })
  vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer=0 })
  vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, { buffer=0 })
  vim.keymap.set("n", "<leader>dF", vim.diagnostic.goto_prev, { buffer=0 })
end

require('lspconfig')['tsserver'].setup{
  on_attach = on_attach,
}
require('lspconfig')['solargraph'].setup{
  on_attach = on_attach,
}
