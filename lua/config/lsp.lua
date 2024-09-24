
local lspconfig = require('lspconfig')

local rust_tools = require('rust-tools')

rust_tools.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Key mappings for Rust-specific actions
      vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>ca', '<cmd>RustCodeAction<CR>', { noremap = true, silent = true })
      vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>rj', '<cmd>RustRunnables<CR>', { noremap = true, silent = true })
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
      vim.api.nvim_buf_set_keymap(bufnr, 'i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })      
    end,
  },
  tools = {
    inlay_hints = {
      auto = true,        -- Automatically enable inlay hints
      show_parameter_hints = true,
      parameter_hints_prefix = "<- ",
      other_hints_prefix = "=> ",
    },
  },
})

require('lspconfig').r_language_server.setup({})

