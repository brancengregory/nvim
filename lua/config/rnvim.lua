local R = require('r')

-- Configure R.nvim to use tmux
R.setup({
  -- Use tmux for sending commands
  external_term = "tmux split-window -h -t 0 -n R r",
  
  -- Arguments for R
  R_args = {
    "--no-save",
    "--quiet"
  },
  -- Configure tmux
  config_tmux = true,
  -- Clear line before sending commands
  clear_line = true,
  -- Auto quit R when quitting Neovim
  auto_quit = false 
})

-- Configure cmp-r for R autocompletion
require("cmp").setup({ sources = {{ name = "cmp_r" }}})
require("cmp_r").setup({})
