local R = require('r')

-- Configure R.nvim to use tmux
R.setup({
  -- Use tmux for sending commands
  external_term = {
    app = "tmux",
    pane = "left",
    send_keys = true
  }, 

  cmd = "radian",
  
  -- Arguments for R
  R_args = {
    "--no-save",
    "--quiet"
  },

  auto_start = "on startup",
  objbr_auto_start = true,
  set_width = false,
  obj_args = true,
  bracketed_paste = true,
  auto_quit = false 
})

-- Configure cmp-r for R autocompletion
require("cmp").setup({ sources = {{ name = "cmp_r" }}})
require("cmp_r").setup({})
