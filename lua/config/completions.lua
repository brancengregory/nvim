local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- Snippet expansion
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(), -- Show completion suggestions
    ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Confirm completion
    ['<Tab>'] = cmp.mapping.select_next_item(), -- Navigate through completion suggestions
  }),
  sources = {
    { name = 'nvim_lsp' }, -- LSP-based completions
    { name = 'luasnip' },  -- Snippet completions
    { name = 'buffer' },   -- Buffer completions
    { name = 'path' },     -- Path completions
    { name = 'cmdline' },  -- Neovim completions
  }
})

