require("completion")
require("nvim-lsp-installer").setup({})

-- Native LSP Setup
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        if client.name == "tsserver" then
          client.server_capabilities.document_formatting = false
        end
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = 0 })
  vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, { buffer = 0 })
  vim.keymap.set("n", "<leader>dF", vim.diagnostic.goto_prev, { buffer = 0 })
  vim.keymap.set("n", "<leader>dF", vim.diagnostic.goto_prev, { buffer = 0 })

  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0 })

  -- vim.cmd([[auocmd BufWritePre <buffer> lua vim.lsp.buf.format { async = true } ]])
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

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.rubocop,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.eslint,
  },
})

require("typescript").setup({
  server = {
    on_attach = function(client, bufnr)
      vim.keymap.set("n", "<leader>dF", vim.diagnostic.goto_prev, { buffer = 0 })
      vim.keymap.set("n", "<leader>gr", ":TypescriptRemoveUnused<CR>", { buffer = 0 })
      vim.keymap.set("n", "<leader>gs", ":TypescriptOrganizeImports<CR>", { buffer = 0 })
      vim.keymap.set("n", "<leader>go", ":TypescriptAddMissingImports<CR>", { buffer = 0 })
      vim.keymap.set("n", "<leader>gI", ":TypescriptFixAll<CR>", { buffer = 0 })
      on_attach(client, bufnr)
    end,
  },
})

require("lspconfig")["solargraph"].setup({
  on_attach = on_attach,
})

require("lspconfig")["sumneko_lua"].setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
