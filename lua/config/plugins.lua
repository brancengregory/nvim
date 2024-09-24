-- Set the path to lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim and define your plugins
require("lazy").setup({
  'neovim/nvim-lspconfig',
  'nvim-treesitter/nvim-treesitter',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
	},
  'nvim-lualine/lualine.nvim',
  {
  	'ThePrimeagen/harpoon',
  	branch = 'harpoon2',
  	dependencies = {'nvim-lua/plenary.nvim'}
  },
  {
    'simrat39/rust-tools.nvim',
    dependencies = {'neovim/nvim-lspconfig'}
  },
  'hrsh7th/nvim-cmp',            -- Completion plugin
  'hrsh7th/cmp-nvim-lsp',        -- LSP source for nvim-cmp
  'hrsh7th/cmp-buffer',          -- Buffer completions
  'hrsh7th/cmp-path',            -- Path completions
  'hrsh7th/cmp-cmdline',         -- Command-line completions 
  'L3MON4D3/LuaSnip',            -- Snippet engine
  'saadparwaiz1/cmp_luasnip',    -- Snippet completions
  'folke/which-key.nvim',        -- <leader> options menu
  'nvim-tree/nvim-web-devicons', -- Icons
  'nvimdev/dashboard-nvim',      -- Dashboard
  -- Add more plugins here...
})

