-- Basic settings
vim.opt.number = true                -- Show line numbers
vim.opt.relativenumber = true        -- Relative line numbers
vim.opt.tabstop = 2                  -- Set tab width to 2 spaces
vim.opt.shiftwidth = 2               -- Indent by 2 spaces
vim.opt.expandtab = true             -- Use spaces instead of tabs
vim.opt.termguicolors = true         -- Enable true colors

-- Mac clipboard integration
if vim.fn.has('macunix') == 1 then
  vim.opt.clipboard:append { 'unnamedplus' }
end

vim.g.mapleader = " "  -- Set leader to space
