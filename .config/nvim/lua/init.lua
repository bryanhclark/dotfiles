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

local opts = {
  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
  server = {
    -- on_attach is a callback called when the language server attachs to the buffer
    on_attach = on_attach,
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        -- enable clippy on save
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}

require("rust-tools").setup(opts)

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

