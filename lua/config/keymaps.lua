-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })

-- Key mappings (optional)
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })  -- Copy to system clipboard
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })  -- Paste from system clipboard


vim.api.nvim_set_keymap('n', '<leader>tt', ':split | term<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tv', ':vsplit | term<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<esc><esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

